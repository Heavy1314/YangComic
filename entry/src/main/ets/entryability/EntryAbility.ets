import { AbilityConstant, ConfigurationConstant, UIAbility, Want } from '@kit.AbilityKit';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { window } from '@kit.ArkUI';

//云函数
import { cloudFunction } from '@kit.CloudFoundationKit';
import { BusinessError } from '@kit.BasicServicesKit';

//键值对 持久化保持数据
import { distributedKVStore } from '@kit.ArkData';

const DOMAIN = 0x0000;
let kvManager: distributedKVStore.KVManager | undefined = undefined;
let kvStore: distributedKVStore.SingleKVStore | undefined = undefined;
let appId: string = 'com.Ynag.comic';
let storeId: string = 'storeId'

async function setKVStore(): Promise<void> {
  return new Promise((resolve, reject) => {
    try {
      let child1 = new distributedKVStore.FieldNode('id');
      child1.type = distributedKVStore.ValueType.INTEGER;
      child1.nullable = false;
      child1.default = '1';
      let child2 = new distributedKVStore.FieldNode('name');
      child2.type = distributedKVStore.ValueType.STRING;
      child2.nullable = false;
      child2.default = 'zhangsan';

      let schema = new distributedKVStore.Schema();
      schema.root.appendChild(child1);
      schema.root.appendChild(child2);
      schema.indexes = ['$.id', '$.name'];
      schema.mode = 1;
      schema.skip = 0;

      const options: distributedKVStore.Options = {
        createIfMissing: true,
        encrypt: false,
        backup: false,
        autoSync: false,
        kvStoreType: distributedKVStore.KVStoreType.SINGLE_VERSION,
        securityLevel: distributedKVStore.SecurityLevel.S3
      };

      kvManager!.getKVStore<distributedKVStore.SingleKVStore>(storeId, options, (err, store) => {
        if (err) {
          console.error(`Failed to get KVStore: Code:${err.code},message:${err.message}`);
          reject(err);
          return;
        }
        console.info('Succeeded in getting KVStore.');
        kvStore = store;
        resolve();
      });
    } catch (e) {
      let error = e as BusinessError;
      console.error(`An unexpected error occurred. Code:${error.code},message:${error.message}`);
      reject(error);
    }
  });
}

interface CloudFunctionResponse {
  access_token: string; // 强制类型声明
  expires_in?: number;  // 可选字段需标注
  refresh_expires_in:number
  refresh_token:string
  token_type:string
}

export async  function kvStorePut(id:string,value:string){
  await kvStore!.put(id,value).catch((err:BusinessError) => {
    if (err !== undefined) {
      console.error(`Failed to put data. Code:${err.code},message:${err.message}`);
      return;
    }
    console.info('Succeeded in putting data.');
  })
}
export async function kvStoreGet(key: string): Promise<distributedKVStore.ValueType | undefined> {
  if (!kvStore) {
    return undefined;
  }
  try {
    return await kvStore.get(key) as distributedKVStore.ValueType;
  } catch (err) {
    console.error(`Failed to put data. Code:${err.code},message:${err.message}`);
    return 0
  }
}

async function getToken() {
  cloudFunction.call({
    name: 'get-managedex-token', // functionName需替换成实际的函数名
    version: '$latest',  // 如果不传入版本号，默认为“$latest”。
    timeout: 70 * 1000,  // 单位为毫秒，默认为70*1000毫秒。
    data: {}
  },async  (err: BusinessError, value: cloudFunction.FunctionResult ) => {
    if (err) {
      hilog.error(0x0000, 'testTag', `Failed to call the function, code: ${err.code}, message: ${err.message}`);
      return;
    }
    let result=value.result as CloudFunctionResponse
    hilog.info(0x0000, 'testTag', `Succeeded in calling the function, result: ${JSON.stringify(value.result)}`);
    await kvStorePut('access_token',result.access_token)
    await kvStorePut('refresh_token',result.refresh_token)
  })
}

export default class EntryAbility extends UIAbility {
  async onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): Promise<void> {
    let context = this.context;
    const kvManagerConfig: distributedKVStore.KVManagerConfig = {
      context: context,
      bundleName: appId
    };
    try {
      this.context.getApplicationContext().setColorMode(ConfigurationConstant.ColorMode.COLOR_MODE_NOT_SET);
      kvManager = distributedKVStore.createKVManager(kvManagerConfig);
      await new Promise<void>((resolve) => {
        setKVStore()
        setTimeout(async () => {
          //TODO 放开获取token接口
          // await getToken()
          resolve()
        }, 500)
      })
      console.info('Succeeded in creating KVManager.');
    } catch (err) {
      hilog.error(DOMAIN, 'testTag', 'Failed to set colorMode. Cause: %{public}s', JSON.stringify(err));
      console.error(`Failed to create KVManager. Code:${err.code},message:${err.message}`);
    }
    hilog.info(DOMAIN, 'testTag', '%{public}s', 'Ability onCreate');
  }

  onDestroy(): void {
    hilog.info(DOMAIN, 'testTag', '%{public}s', 'Ability onDestroy');
  }

  async onWindowStageCreate(windowStage: window.WindowStage): Promise<void> {
    // Main window is created, set main page for this ability
    hilog.info(DOMAIN, 'testTag', '%{public}s', 'Ability onWindowStageCreate');

    windowStage.loadContent('pages/Index', (err) => {
      if (err.code) {
        hilog.error(DOMAIN, 'testTag', 'Failed to load the content. Cause: %{public}s', JSON.stringify(err));
        return;
      }
      hilog.info(DOMAIN, 'testTag', 'Succeeded in loading the content.');
    });
  }

  onWindowStageDestroy(): void {
    // Main window is destroyed, release UI related resources
    hilog.info(DOMAIN, 'testTag', '%{public}s', 'Ability onWindowStageDestroy');
  }

  async onForeground(): Promise<void> {
    // Ability has brought to foreground
    hilog.info(DOMAIN, 'testTag', '%{public}s', 'Ability onForeground');

  }

  onBackground(): void {
    // Ability has back to background
    hilog.info(DOMAIN, 'testTag', '%{public}s', 'Ability onBackground');
  }
}
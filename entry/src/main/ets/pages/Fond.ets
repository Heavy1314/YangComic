import { TagQueryUtil, TAG_DATA_SOURCE, TagDataInterface } from './utlis/TagQueryUtil'
import { Filter, FilterParams, FilterResult, FilterType } from '@kit.ArkUI';
import { ComicMangeInterface, getAltTitleByLang } from './utlis/ComicMangaInterface'
import { HttpService } from '../httprequest/http'
import { http } from '@kit.NetworkKit';
import { WaterFlowDataSource } from './utlis/WaterFlowDataSource';
import { testData, testCover } from './utlis/TestData'
import { setCoverDataIntoManga, CoverUrlResult, getCoverUrlByMangaId } from './utlis/ComicAPi'

const zhNames = [
  "单篇",
  "惊悚",
  "获奖作品",
  "转世重生",
  "科幻",
  "时空旅行",
  "性别转换",
  "萝莉",
  "传统游戏",
  "官方上色",
  "历史",
  "怪物",
  "动作",
  "恶魔",
  "心理",
  "幽灵",
  "动物",
  "长条排版",
  "浪漫",
  "忍者",
  "喜剧",
  "机甲",
  "文选/合集",
  "耽美",
  "乱伦",
  "犯罪",
  "生存",
  "僵尸",
  "逆后宫",
  "运动",
  "超级英雄",
  "武术",
  "粉丝上色",
  "武士",
  "魔法少女",
  "黑手党",
  "冒险",
  "自出版",
  "虚拟现实",
  "上班族",
  "电子游戏",
  "后启示录",
  "性暴力",
  "变装",
  "魔法",
  "百合",
  "后宫",
  "军事",
  "武侠",
  "异世界",
  "四格漫画",
  "同人志",
  "哲学",
  "血腥",
  "戏剧/剧情",
  "医疗",
  "校园生活",
  "恐怖",
  "奇幻",
  "反派女主",
  "吸血鬼",
  "不良少年",
  "魔物娘",
  "正太",
  "警察",
  "网络漫画",
  "日常",
  "外星人",
  "烹饪",
  "超自然",
  "悬疑",
  "改编作品",
  "音乐",
  "全彩",
  "悲剧",
  "辣妹"
]

enum FooterState {
  Loading = 0,
  End = 1
}

interface LanguageTagsInterface {
  value: string
  name: string
}

interface ApiResponseInterface {
  result: string
  response?: string
  data: ComicMangeInterface[]
}


interface RequestParams {
  'availableTranslatedLanguage[]': string[];
}


const languageTags: LanguageTagsInterface[] = [
  { value: 'zh', name: '中文' },
  { value: 'en', name: '英语' },
  { value: 'ja', name: '日语' }
]

interface GeneratedTypeLiteralInterface_2 {
  width: number;
  height: number;
}

@Component
export struct Fond {
  @State message: string = 'Fond';
  @Provide('NavPathStack') pageStack: NavPathStack = new NavPathStack();
  @State searchKeyword: string = ''
  @State comicList: ComicMangeInterface[] = []
  tagsScroller: Scroller = new Scroller();
  languageScroller: Scroller = new Scroller()
  private availableTranslatedLanguageList: Array<string | null> = [] //语言筛选
  private includedTags: string[] = [] //tag筛选
  private filterParam: Array<FilterParams> = [
    {
      name: '标签',
      options: zhNames,
    },
    {
      name: '语言',
      options: languageTags.map((item) => {
        return item.name
      }),
    },
  ];
  //瀑布流
  @State minSize: number = 120;
  @State maxSize: number = 240;
  @State footerState: FooterState = FooterState.Loading;
  waterScroll: Scroller = new Scroller();
  dataSource: WaterFlowDataSource = new WaterFlowDataSource([]);
  @State coverList: CoverUrlResult[] = []
  @State colors: number[] = [0xFFC0CB, 0xDA70D6, 0x6B8E23, 0x6A5ACD, 0x00FFFF, 0x00FF7F];
  // 改为动态生成高度（根据数据ID映射，避免索引错乱）
  private itemSizeMap: Record<string, GeneratedTypeLiteralInterface_2> = {};
  //网络接口
  baseUrl = 'https://api.mangadex.org/'
  mangaApi = new HttpService(this.baseUrl)

  async getList(): Promise<void> {
    const params: RequestParams = {
      'availableTranslatedLanguage[]': ['zh'] // 传多个则写 ['zh', 'ja']
    };
    this.mangaApi.request<ApiResponseInterface>('/manga',
      http.RequestMethod.GET, params).then((res: ApiResponseInterface) => {
      console.info(JSON.stringify(res.data), 'qwe')
      this.comicList = res.data
      this.dataSource.reload(res.data)
    })
  }

  // 修复：根据数据ID生成唯一尺寸，避免索引问题
  private generateItemSize(id: string): GeneratedTypeLiteralInterface_2 {
    if (this.itemSizeMap[id]) {
      return this.itemSizeMap[id];
    }
    const width = Math.floor(Math.random() * (this.maxSize - this.minSize)) + this.minSize;
    const height = Math.floor(Math.random() * (this.maxSize - this.minSize)) + this.minSize;
    this.itemSizeMap[id] = { width, height } as GeneratedTypeLiteralInterface_2;
    return { width, height };
  }

  // 修复：清空尺寸映射，重新生成
  private resetItemSizeMap(data: ComicMangeInterface[]) {
    this.itemSizeMap = {};
    data.forEach(item => this.generateItemSize(item.id));
  }

  async aboutToAppear(): Promise<void> {
    //TODO 放开网络请求
    // await this.getList()
    this.dataSource.reload(testData)
    // this.coverList = await setCoverDataIntoManga(testData, this.mangaApi, true)
    this.coverList = testCover
    console.info('cover', JSON.stringify(this.coverList))
    this.resetItemSizeMap(testData)
    // this.dataSource.reload(this.comicList)
  }

  @Builder
  TagsToggleBuilder() {
    ForEach(TAG_DATA_SOURCE, (item: TagDataInterface, index: number) => {

      Toggle({ type: ToggleType.Button, isOn: false }) {
        Text(item.zhName).fontColor('#182431').fontSize(12)
      }
      .width(92)
      .selectedColor('rgba(0,125,255,0.70)')
      .onChange((isOn: boolean) => {
        if (isOn) {
          if (this.includedTags.findIndex((a: string | null) => a == item.id)) {
            this.includedTags.push(item.id)
          }
        } else {
          let index = this.includedTags.findIndex((a: string | null) => a == item.id)
          this.includedTags.splice(index, 1)
        }
      })
    })
  }

  @Builder
  LanguagesToggleBuilder() {
    ForEach(languageTags, (item: LanguageTagsInterface, index: number) => {
      Toggle({ type: ToggleType.Button, isOn: false }) {
        Text(item.name).fontColor('#182431').fontSize(12)
      }
      .width(106)
      .selectedColor('rgba(0,125,255,0.70)')
      .onChange((isOn: boolean) => {
        if (isOn) {
          if (this.availableTranslatedLanguageList.findIndex((a: string | null) => a == item.value)) {
            this.availableTranslatedLanguageList.push(item.value)
          }
        } else {
          let index = this.availableTranslatedLanguageList.findIndex((a: string | null) => a == item.value)
          this.availableTranslatedLanguageList.splice(index, 1)
        }
      })
    })
  }

  @Builder
  FootText(text: string) {
    Text(text)
      .fontSize(10)
      .backgroundColor('#C5C1BE')
      .width('100%')
      .height(50)
      .align(Alignment.Center)
      .margin({ top: 6 })
      .textAlign(TextAlign.Center)
      .borderRadius(20)
  }

  @Builder
  itemFoot() {
    Column() {
      if (this.footerState == FooterState.Loading) {
        this.FootText(`加载中...`)
      } else if (this.footerState == FooterState.End) {
        this.FootText(`到底啦...`)
      } else {
        this.FootText(`Footer`)
      }
    }
  }

  build() {
    Column() {
      Search({ value: this.searchKeyword })
      Column() {
        Row() {
          Text('语言：')
          Scroll(this.languageScroller) {
            Flex() {
              this.LanguagesToggleBuilder()
            }
          }
        }
        .margin(4)

        Row() {
          Text('标签：')
          Scroll(this.tagsScroller) {
            Flex() {
              this.TagsToggleBuilder()
            }
          }.layoutWeight(1)
          .scrollable(ScrollDirection.Horizontal)
          .scrollBar(BarState.Off)
        }
        .margin(4)

        Column() {
          WaterFlow({ footer: this.itemFoot() }) {
            LazyForEach(this.dataSource, (item: ComicMangeInterface, index: number) => {
              FlowItem() {
                Column() {
                  Text('N' + getAltTitleByLang(item.attributes.altTitles, 'zh'))
                    .fontSize(12)
                    .height('16')
                    .fontColor('#000')
                  Image(getCoverUrlByMangaId(item.id, this.coverList))
                    .objectFit(ImageFit.Contain)
                    .width('46%')
                    .height('90%')
                    .alt($r('app.media.loading'))  // 添加占位图
                    .layoutWeight(1)
                    .onError(() => {
                      console.error('图片加载失败：', getCoverUrlByMangaId(item.id, this.coverList));
                      // 加载失败时显示占位图
                      return $r('app.media.load_fail');
                    })
                    .onComplete(() => {
                      console.log('图片加载完成：', getCoverUrlByMangaId(item.id, this.coverList));
                    })
                }
              }
              .height(this.generateItemSize(item.id).height)
              .border({ width: 2, color: Color.Blue })
            }, (item: ComicMangeInterface) => item.id)
          }
          .columnsTemplate('1fr 1fr') // 设置2列等宽布局
          .columnsGap(4)
          .rowsGap(6)
          // .backgroundColor(0xFAEEE0)
          .width('100%')
          .height('80%')
          .flexGrow(1)
          .padding({ bottom: 10 })
          .itemConstraintSize({
            minWidth: 160,
            maxWidth: 240,
            minHeight: 120,
            maxHeight: 240
          })
          // 触底加载数据：滚动到底部时触发分页加载
          .onReachEnd(() => {
            console.info('onReachEnd')
            if (this.dataSource.totalCount() < 50) {
              this.dataSource.addNewItems(10, testData)
              this.footerState = FooterState.Loading;
            } else {
              this.footerState = FooterState.End;
            }

            return
            // 模拟分页加载：当数据超过200条时停止加载
            // if (this.dataSource.totalCount() > 200) {
            //   this.footerState = FooterState.End;
            //   return;
            // }
            // setTimeout(() => {
            //   for (let i = 0; i < 100; i++) {
            //     this.dataSource.addLastItem();
            //   }
            // }, 1000)
          })
          .onReachStart(() => {
            // 滚动到顶部时触发
            console.info('waterFlow reach start');
          })
          .onScrollStart(() => {
            // 开始滚动时触发
            console.info('waterFlow scroll start');
          })
          .onScrollStop(() => {
            // 停止滚动时触发
            console.info('waterFlow scroll stop');
          })
          .onScrollFrameBegin((offset: number, state: ScrollState) => {
            // 滚动帧开始时触发：可以控制滚动行为
            // offset：滚动偏移量，state：滚动状态
            console.info('waterFlow scrollFrameBegin offset: ' + offset + ' state: ' + state.toString());
            return { offsetRemain: offset }; // 返回开发者期望的实际滚动偏移量
          })
        }
        .flexGrow(1)
        .width('100%')

      }
      .height('100%')
      .justifyContent(FlexAlign.Start)
      // 关键修改6：添加 paddingBottom 避免底部内容被遮挡（可选，根据实际情况调整）
      .padding({ bottom: 50 })
    }
    .height('100%')
    .justifyContent(FlexAlign.Start)
  }
}

@Builder
export function FondBuild() {
  Fond();
}

/*
/
*   NavDestination(){
      RelativeContainer() {
        Text(this.message)
          .id('FondHelloWorld')
          .fontSize($r('app.float.page_text_font_size'))
          .fontWeight(FontWeight.Bold)
          .alignRules({
            center: { anchor: '__container__', align: VerticalAlign.Center },
            middle: { anchor: '__container__', align: HorizontalAlign.Center }
          })
          .onClick(() => {
            this.message = 'Fond';
          })
      }
      .height('100%')
      .width('100%')
    }
    .hideTitleBar(true)
    .hideBackButton(true)
    .onReady((ctx: NavDestinationContext)=>{
    })
 */



import { http } from '@kit.NetworkKit';
import { promptAction } from '@kit.ArkUI';

export class HttpService {
  private baseURL: string;

  /**
   * 手动拼接 GET 参数（支持数组参数，如 availableTranslatedLanguage[]=zh）
   * @param params 参数对象
   * @returns 编码后的查询字符串
   */
  private buildQueryString(params: object): string {
    const queryParts: string[] = [];
    Object.entries(params).forEach((entry: [string, string | string[]]) => {
      const key = entry[0];
      const value = entry[1];
      // 跳过空值
      if (value === undefined || value === null) {
        return;
      }

      if (Array.isArray(value)) {
        // 处理数组参数：key[]=val1&key[]=val2
        value.forEach((item: string | number | boolean) => {
          const encodedKey = encodeURIComponent(key);
          const encodedValue = encodeURIComponent(String(item));
          queryParts.push(`${encodedKey}=${encodedValue}`);
        });
      } else {
        // 处理普通参数
        const encodedKey = encodeURIComponent(key);
        const encodedValue = encodeURIComponent(String(value));
        queryParts.push(`${encodedKey}=${encodedValue}`);
      }
    });

    // 拼接所有参数，返回最终字符串
    return queryParts.join('&');
  }

  constructor(baseURL: string) {
    this.baseURL = baseURL;
  }

  async request<T>(
    url: string,
    method: http.RequestMethod,
    data?: object
  ): Promise<T> {
    const httpInstance = http.createHttp();
    try {
      let fullUrl = `${this.baseURL}${url}`;
      const options: http.HttpRequestOptions = {
        method,
        header: {},
        // extraData: JSON.stringify(data)
      };

      if (method === http.RequestMethod.GET && data) {
        // GET 请求：将参数拼接到 URL 的 query 部分
        const queryString = this.buildQueryString(data);
        fullUrl += queryString ? `?${queryString}` : '';
      } else if (data) {
        // POST/PUT 等：参数放请求体，设置 Content-Type
        if (options.header) {
          options.header['Content-Type'] = 'application/json';
        }
        options.extraData = JSON.stringify(data);
      }
      const res = await httpInstance.request(fullUrl, options);
      return JSON.parse(res.result as string) as T;
    } catch (error) {
      promptAction.showToast({ message: '网络请求失败' });
      throw new Error(error as string);
    } finally {
      httpInstance.destroy();
    }
  }
}

// // 使用示例
// const api = new HttpService('https://api.example.com');
// api.request('/user', http.RequestMethod.GET)
//   .then((data) => console.log(data));
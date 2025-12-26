/** 漫画/动漫基础信息接口 */
export interface ComicMangeInterface {
  id: string;
  type: string;
  attributes: ComicAttributes;
  relationships: ComicRelationship[];
}

/** 漫画属性详情接口 */
interface ComicAttributes {
  // 标题（不同罗马字/语言格式）
  title: Record<string, string>;

  // 备选标题列表
  altTitles: Array<Record<string, string>>;

  // 描述（多语言）
  description: Record<string, string>;

  // 是否锁定
  isLocked: boolean;

  // 外部链接映射
  links: Record<string, string>;

  // 官方链接（可为空）
  officialLinks: null | Record<string, string>;

  // 原始语言
  originalLanguage: string;

  // 最后一卷（可为空）
  lastVolume: null | string;

  // 最后一章（可为空）
  lastChapter: null | string;

  // 受众群体（如seinen：青年向）
  publicationDemographic: string;

  // 状态（如ongoing：连载中）
  status: string;

  // 发行年份
  year: number;

  // 内容分级
  contentRating: string;

  // 标签列表
  tags: ComicTag[];

  // 状态（发布状态）
  state: string;

  // 新卷是否重置章节号
  chapterNumbersResetOnNewVolume: boolean;

  // 创建时间
  createdAt: string;

  // 更新时间
  updatedAt: string;

  // 版本号
  version: number;

  // 可用的翻译语言列表
  availableTranslatedLanguages: string[];

  // 最新上传章节ID
  latestUploadedChapter: string;
}

/** 漫画标签接口 */
interface ComicTag {
  id: string;
  type: string;
  attributes: TagAttributes;
  relationships: [];
}

/** 标签属性接口 */
interface TagAttributes {
  // 标签名（多语言）
  name: Record<string, string>;

  // 标签描述（多语言，可为空对象）
  description: Record<string, string>;

  // 标签分组（如theme：主题，genre：类型，format：格式）
  group: string;

  // 版本号
  version: number;
}

/** 漫画关联项接口（补充缺失的接口定义） */
interface ComicRelationship {
  id: string;
  type: string;

  // 可选：补充实际存在的字段（如related）
  related?: string;
}


export const getAltTitleByLang = (altTitles: Array<Record<string, string>>, lang: string): string => {
  // 定义语言优先级列表：目标语言 → zh-hk → jp → en
  const langPriorityList = [lang, 'zh', 'zh-hk'];

  // 遍历 altTitles 数组
  for (let i = 0; i < altTitles.length; ++i) {
    const altTitleItem = altTitles[i];
    const propKeys = Object.keys(altTitleItem);

    // 按优先级检查语言
    for (let j = 0; j < langPriorityList.length; ++j) {
      const currentLang = langPriorityList[j];
      // 找到匹配的语言则立即返回对应标题
      if (propKeys.includes(currentLang)) {
        return altTitleItem[currentLang];
      }
    }
  }

  // 所有语言都未匹配时返回默认值
  return '暂无中文标题';
};
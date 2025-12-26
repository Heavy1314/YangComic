/** 封面图响应根类型 */
export interface CoverArtResponse {
  result: 'ok' | string; // 限定常见成功值，同时兼容其他字符串
  response: 'entity' | string; // 响应类型标识
  data: CoverArtData;
}

/** 封面图核心数据 */
export interface CoverArtData {
  id: string; // UUID 格式字符串
  type: 'cover_art' | string; // 资源类型
  attributes: CoverArtAttributes;
  relationships: CoverArtRelationship[];
}

/** 封面图属性 */
export interface CoverArtAttributes {
  description: string; // 描述（可能为空）
  volume: string; // 卷数（字符串类型，兼容非数字卷号）
  fileName: string; // 文件名（含扩展名）
  locale: string; // 语言地区标识（如 ja/en-CN 等）
  createdAt: string; // ISO 8601 时间格式
  updatedAt: string; // ISO 8601 时间格式
  version: number; // 版本号
}

/** 封面图关联资源 */
export interface CoverArtRelationship {
  id: string; // 关联资源ID
  type: 'manga' | 'user' | string; // 关联资源类型
}
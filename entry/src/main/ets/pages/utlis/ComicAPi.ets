import { HttpService } from '../../httprequest/http'
import { CoverArtResponse } from './Cover'
import { http } from '@kit.NetworkKit'
import { ComicMangeInterface } from './ComicMangaInterface'

// 缓存对象 - 存储 coverId -> coverUrl 的映射
const coverUrlCache = new Map<string, string>();

// 可选：缓存清理机制（避免内存泄漏）
export const clearCoverUrlCache = () => coverUrlCache.clear();

// 可选：获取缓存大小（用于监控）
export const getCoverCacheSize = () => coverUrlCache.size;


export const getCoverImageUrl = async (api: HttpService, coverId: string, mangaId: string): Promise<string> => {
  //baseUrl  https://api.mangadex.org
  const baseUrl = 'https://uploads.mangadex.org/covers/'
  let fileName = ''
  let coverUrl = ''
  if (coverUrlCache.has(coverId)) {
    return coverUrlCache.get(coverId) || '';
  }
  try {
    const res: CoverArtResponse = await new Promise((resolve, reject) => {
      api.request<CoverArtResponse>('/cover/' + coverId, http.RequestMethod.GET)
        .then(resolve)
        .catch(reject);
    });
    if (res?.data?.attributes?.fileName) {
      const fileName = res.data.attributes.fileName;
      const coverUrl = `${baseUrl}${mangaId}/${fileName}`; // 关键：mangaId 和 fileName 之间加 /
      // console.info(`获取封面成功 coverId: ${coverId}, fileName: ${fileName}, url: ${coverUrl}`);
      // 4. 写入缓存
      coverUrlCache.set(coverId, coverUrl);
      return coverUrl;
    } else {
      console.warn(`coverId: ${coverId} 无 fileName`);
      coverUrlCache.set(coverId, '');
      return '';
    }
  } catch (error) {
    console.error(`获取封面失败 coverId: ${coverId}, mangaId: ${mangaId}`, error);
    // 3. 异常情况也缓存空值，避免重复报错
    coverUrlCache.set(coverId, '');
    return '';
  }
}


export interface CoverUrlResult {
  mangaId: string
  coverUrl: string
}

export const setCoverDataIntoManga = async (data: ComicMangeInterface[], api: HttpService, useMangaIdCache = false) => {
  const mangaIdCache = new Map<string, string>();
  const coverResults: CoverUrlResult[] = [];

  // 预加载缓存（同步操作）
  if (useMangaIdCache) {
    data.forEach(manga => {
      if (manga.id && mangaIdCache.has(manga.id)) {
        coverResults.push({ mangaId: manga.id, coverUrl: mangaIdCache.get(manga.id)! });
      }
    });
  }

  const asyncTasks = data.map(async (manga) => {
    if (!manga.id || (useMangaIdCache && mangaIdCache.has(manga.id))) {
      return null;
    }

    if (!Array.isArray(manga.relationships)) {
      const result: CoverUrlResult = { mangaId: manga.id, coverUrl: '' };
      useMangaIdCache && mangaIdCache.set(manga.id, '');
      return result;
    }

    const coverArtRelation = manga.relationships.find(rel => rel.type === 'cover_art');
    let coverUrl = '';

    if (coverArtRelation?.id) {
      try {
        coverUrl = await getCoverImageUrl(api, coverArtRelation.id, manga.id);
        console.info('coverResults' + coverUrl)
      } catch (error) {
        console.error(`封面获取失败: ${manga.id}`, error);
      }
    }

    const result: CoverUrlResult = { mangaId: manga.id, coverUrl };
    useMangaIdCache && mangaIdCache.set(manga.id, coverUrl);
    return result;
  });

  // 等待所有异步任务完成
  const results = await Promise.all(asyncTasks);

  // 过滤有效结果并合并
  results.forEach(result => result && coverResults.push(result));
  console.info(JSON.stringify(coverResults) + '123')
  return coverResults;
}

export const getCoverUrlByMangaId = (manga: string, coverList: CoverUrlResult[]) => {
  for (let data of coverList) {
    if (data.mangaId == manga) {
      return data.coverUrl
    }
  }
  return ''
}
import { ComicMangeInterface } from './ComicMangaInterface'
import { CoverUrlResult } from './ComicAPi'

export const testData: ComicMangeInterface[] = [
  {
    "id": "b5b21ca1-bba5-4b9a-8cd1-6248f731650b",
    "type": "manga",
    "attributes": {
      "title": {
        "ja-ro": "Shuumatsu no Valkyrie"
      },
      "altTitles": [
        {
          "ja": "終末のワルキューレ"
        },
        {
          "ja-ro": "Shuumatsu no Walküre"
        },
        {
          "en": "Record of Ragnarok"
        },
        {
          "zh-hk": "終末的女武神"
        },
        {
          "ar": "سجلات راغناروك"
        },
        {
          "bg": "Рагнарок"
        },
        {
          "fr": "Valkyrie Apocalypse"
        },
        {
          "id": "Rekam Jejak Ragnarok"
        },
        {
          "id": "Valkri Jawir Asli Jaksel"
        },
        {
          "fa": "تاریخچه رگنوراک"
        },
        {
          "ru": "Повесть о Конце Света"
        },
        {
          "es-la": "Los Registros del Ragnarok"
        },
        {
          "tr": "Ragnarok Kaydı"
        },
        {
          "uk": "Повість про кінець світу"
        },
        {
          "vi": "Đại Chiến Người Và Thần"
        },
        {
          "it": "La Valchiria della Fine: Le Cronache del Ragnarok"
        },
        {
          "en": "The Valkyrie of the End: Chronicles of the Final Destiny of the Gods"
        }
      ],
      "description": {
        "ar": "تبدأ القصة عندما يجتمع الحكام في مؤتمر لتقرير مصير البشرية، ويقررون إفناءها.  لكن محاربةٌ من محاربات الفالكيري تقدم اقتراحًا بديعًا، مواجهةٌ فاصلة بين الحكام والبشر، كفرصةٍ أخيرةٍ لبقاءِ الجنسِ البشري.  ثلاثةَ عشرَ حاكمًا سيواجهون ثلاثةَ عشرَ بطلاً بشريًا في معاركٍ فرديةٍ فاصلةٍ لتحديدِ مصيرِ البشريةِ جمعاء.",
        "en": "The story begins when the gods call a convention to decide whether to let humanity live or die, and settle on destroying humanity. But a lone Valkyrie puts forward a suggestion to let the gods and humanity fight one last battle, as a last hope for humanity's continued survival. 13 gods will fight against 13 human champions in one-on-one battles to decide whether humanity lives or dies.\n___\n**Alt Official English:** [Comikey](https://comikey.com/comics/record-of-ragnarok-manga/61/), [MangaHot](https://mangahot.jp/site/works/e_R0002)",
        "fa": "⁧⁧ داستان جایی شروع میشه که خدایان بحث این رو به میان میاورند که انسان‌ها زنده بمانند یا نابود شوند. ولی یک والکری به تنهایی بحث را به سمتی میکشاند که به انسان‌ها اجازه یک مبارزه در مقابل خدایان داده شود. و به این شکل کور سوی امید بشریت روشن باقی میماند. سیزده خدا، سیزده انسان، در مقابل هم قرار میگیرند تا سرنوشت بشریت را مشخص کنند",
        "fr": "Tous les mille ans, l'ensemble des dieux, tous panthéons réunis, se réunissent au Valhalla, le paradis des âmes, lors d'une assemblée présidée par Zeus, le dieu suprême grec, afin de décider du sort des humains. Or, cette année-là, il est décidé à la quasi-unanimité de détruire l'humanité. Mais la Valkyrie Brunehilde interrompt la conférence et propose aux dieux de se mesurer aux mortels lors du tournoi de Ragnarök, pour déterminer s'ils valent vraiment la peine d'êtres anéantis. Ce tournoi opposera 13 dieux issus de diverses mythologies à 13 puissants humains qui ont fait l'histoire. Si l'humanité remporte au moins sept des 13 duels, alors les dieux épargneront l'humanité.",
        "id": "- In Indonesian by [Akasha](http://www.mncgramedia.id/comics/comic_detail/akasha-record-of-ragnarok-01) as \"Record of Ragnarok\"",
        "it": "- In Italian by [Star Comics](https://www.starcomics.com/titoli-fumetti/record-of-ragnarok) as \"Record of Ragnarok\"",
        "ja": "地上で横暴を極める人類に対し、神々は人類の滅亡を決定する。その決定を覆すべく選ばれたのは人類史上最強、13人の戦士たち。神々とのタイマン13番勝負に勝ち、人類を存続させることは出来るのか!? 第一回戦は北欧神話最強「トール神」VS三国志最強「呂布奉先」！",
        "ru": "История начинается c собрания богов, на котором они решают судьбу человечества: убить всех или оставить в живых, согласившись в никчёмности рода людского, боги выбирают первое... Но одна валькирия выдвигает предложение: позволить богам и человечеству сразиться в битве, в качестве последнего луча надежды людей. 13 богов сразятся против 13 чемпионов людей в битвах один на один, чтобы решить, будет ли человечество жить или сгинет в могуществе божественной силы.",
        "tr": "Hikâye, tanrıların insanlığın yaşamasına ya da ölmesine karar vermek için bir toplantı düzenlemesi ve insanlığı yok etmeye karar vermesiyle başlar. Ancak yalnız bir Valkyrie, insanlığın hayatta kalması için son bir umut olarak tanrıların ve insanlığın son bir savaşa girmesine izin verilmesi önerisini ortaya atar. 13 tanrı, insanlığın yaşayıp yaşamayacağına karar vermek için teke tek savaşlarda 13 insan şampiyona karşı dövüşecektir.",
        "uk": "Історія починається зі зборів богів, на яких вирішується доля людства: життя чи смерть. Погодившись з нікчемністю людського роду, боги вибирають друге... Але одна валькірія висуває пропозицію: дозволити богам і людям битися в битві, яка стане останнім променем надії для людства. 13 богів б'ються проти 13 людських чемпіонів у битвах віч-на-віч, щоб вирішити, чи буде людство жити чи згине у могутності божественної сили.",
        "es-la": "Los Dioses se reúnen con el objetivo de decidir si la humanidad debe vivir o morir. Y aunque llegan a la conclusión de que debe perecer, una Valkyria propone que una lucha de dioses contra humanos para tomar tan difícil decisión. Así, 13 humanos pelearán contra 13 Dioses para resolver el destino de la humanidad.",
        "pt-br": "A cada 1.000 anos, as divindades se reúnem sob o conselho de Valhalla para decidir sobre o direito da humanidade de continuar vivendo, ou por sua destruição, porém desta vez os deuses estão furiosos com o descaso humano para com o planeta, pendendo passim para aniquilar toda a raça humana, porém uma única valquíria os convencem de realizar o Ragnarok, uma batalha mortal entre humanos e deuses para decidir sob sua sobrevivência, 13 humanos enfrentarão 13 deuses. Serão este humanos capazes de colidir com as poderosas divindades?"
      },
      "isLocked": false,
      "links": {
        "al": "107098",
        "ap": "record-of-ragnarok",
        "bw": "series/161750/list",
        "kt": "51379",
        "mu": "v5flope",
        "mal": "110485",
        "raw": "https://comic-zenon.com/episode/3269754496757270339"
      },
      "officialLinks": null,
      "originalLanguage": "ja",
      "lastVolume": "",
      "lastChapter": "",
      "publicationDemographic": "seinen",
      "status": "ongoing",
      "year": 2017,
      "contentRating": "suggestive",
      "tags": [
        {
          "id": "07251805-a27e-4d59-b488-f0bfbec15168",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Thriller"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "391b0423-d847-456f-aff0-8b0cfc03066b",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Action"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "3b60b75c-a2d7-4860-ab56-05f391bb889c",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Psychological"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "4d32cc48-9f00-4cca-9b5a-a839f0764984",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Comedy"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "5fff9cde-849c-4d78-aab0-0d52b2ee1d25",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Survival"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "799c202e-7daa-44eb-9cf7-8a3c0441531e",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Martial Arts"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "81183756-1453-4c81-aa9e-f6e1b63be016",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Samurai"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "87cc87cd-a395-47af-b27a-93258283bbc6",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Adventure"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "9467335a-1b83-4497-9231-765337a00b96",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Post-Apocalyptic"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "a1f53773-c69a-4ce5-8cab-fffcd90b1565",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Magic"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "ac72833b-c4e9-4878-b9db-6c8a4a99444a",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Military"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "b29d6a3d-1569-4e7a-8caf-7557bc92cd5d",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Gore"
            },
            "description": {},
            "group": "content",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "b9af3a63-f058-46de-a9a0-e0c13906197a",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Drama"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "cdc58593-87dd-415e-bbc0-2ec27bf404cc",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Fantasy"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "eabc5b4c-6aff-42f3-b657-3e90cbd00b75",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Supernatural"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "ee968100-4191-4968-93d3-f82d72be7e46",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Mystery"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "f8f62932-27da-4fe4-8ee1-6779a8c5edba",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Tragedy"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        }
      ],
      "state": "published",
      "chapterNumbersResetOnNewVolume": false,
      "createdAt": "2019-10-04T20:44:47+00:00",
      "updatedAt": "2025-12-08T14:50:04+00:00",
      "version": 88,
      "availableTranslatedLanguages": [
        "zh-hk",
        "en",
        "fr",
        "tr",
        "es-la",
        "ru",
        "pt-br",
        "vi",
        "uk",
        "bg",
        "id",
        "it",
        "fa",
        "zh",
        "ar",
        "sr",
        "es",
        "pl"
      ],
      "latestUploadedChapter": "a546a3d2-29a3-4847-9b35-2446db246343"
    },
    "relationships": [
      {
        "id": "3f336248-ea63-495f-ad25-6e248f477cc9",
        "type": "author"
      },
      {
        "id": "62d293b1-fb41-4324-9227-705df86088b4",
        "type": "author"
      },
      {
        "id": "96bbb2d3-13a8-46d1-b560-438547eff4b5",
        "type": "artist"
      },
      {
        "id": "9173437a-7934-44ad-80cc-4a0b60d98905",
        "type": "cover_art"
      },
      {
        "id": "32dfa44f-1077-4ed2-bedc-b7707788fb1b",
        "type": "manga",
        "related": "shared_universe"
      },
      {
        "id": "6676aef9-cf30-4950-9a20-e0382b5e7447",
        "type": "manga",
        "related": "side_story"
      },
      {
        "id": "98b0d83a-f3c8-4677-ab9e-1a3576654b8f",
        "type": "manga",
        "related": "doujinshi"
      },
      {
        "id": "a4ba84a7-2e74-4c91-afb4-9b81ef8c1650",
        "type": "manga",
        "related": "spin_off"
      },
      {
        "id": "f60fd694-43af-490a-a744-d01ccfad5261",
        "type": "manga",
        "related": "alternate_version"
      },
      {
        "id": "f6f3fe1c-c086-4f50-a8cf-3ec48fa3f3a8",
        "type": "manga",
        "related": "spin_off"
      }
    ]
  },
  {
    "id": "356de811-ae92-48f1-b93b-cfdf0f8d02e4",
    "type": "manga",
    "attributes": {
      "title": {
        "ja-ro": "Kakunaru Ue wa"
      },
      "altTitles": [
        {
          "ja": "描くなるうえは"
        },
        {
          "ja-ro": "Kakunaru Ue ha"
        },
        {
          "en": "Now That We Draw"
        },
        {
          "id": "Rupa Gambar Kita"
        },
        {
          "vi": "Ta Cùng Vẽ Thôi Nào!"
        },
        {
          "ar": "بما أننا نرسم الآن"
        },
        {
          "tr": "Madem Artık Yazıp Çizebiliyoruz..."
        },
        {
          "zh": "既然要画恋爱漫画"
        }
      ],
      "description": {
        "ar": "...ويهارا-كن، عاشق الرسوم ثنائية الأبعاد، يحلم بأن يصبح رسامًا للمانغا يومًا ما! لكن حلمه مُهدد عندما يرفض محرر عمله لاعتباره ممل للغاية. في اليوم التالي، وبينما كان يفكر في التخلي عن حلمه، ترى مياموتو نينا، إحدى طالبات صفه, مخطوطته",
        "en": "Uehara-kun, who loves 2D, dreams of becoming a comic artist one day! However, his dream is threatened when an editor rejects his work as too boring. The next day, while contemplating giving up on his dream, a gal in his class, Miyamoto Niina, sees his manuscript…",
        "id": "Uehara-kun menyukai karakter 2 dimensi dan mempunyai cita-cita menjadi mangaka! Namun, mimpinya pupus saat seorang editor menolak manga-nya karena bikin ngantuk. Besoknya, dia berencana membuang manga yang ditolak tersebut, namun, salah satu gadis dari kelasnya, Miyamoto Niina, mengetahui manga hasil buatannya, timbulah kisah komedi-romantis yang terjalin dari sebuah manga!",
        "ja": "2次元をこよなく愛する上原くんの夢は漫画家！ ある日、同じクラスのギャル宮本さんに自分の原稿を見られたことで漫画のための距離感近すぎ疑似恋愛、開始!?",
        "tr": "Her zaman aklı iki boyutlu dünyada olan Yuuki Uehara, çizdiği mangada mükemmel romantik komedi karakterini -mütevazi, şapşik ve bakire Şirayşi Kiyone’yi- yaratmayı başarmıştır! Fakat mangasını favori yayımcısının editörüne götürdüğünde ondan aynı sözleri duyamaz. Editör hikayenin klişe ve gerçekçilikten çok uzak olduğunu söylediğinde Uehara’nın dünyası başına yıkılır. Bu umutsuzlukla dolaşırken karşısına onunla aynı kaderi paylaşan, tebessümü yüzünden düşmeyen, güzeller güzeli sınıf arkadaşı Niyna Miyamoto çıkar. Miyamoto da Uehara gibi gelecekte mangaka olmak isteyen fakat gerçekçi olmayan hikayesiyle reddedilen bir yetenektir. Uehara’nın da aynı sorundan muzdarip olduğunu duyunca Miyamoto’nun ağzından şu kelimeler dökülür: “Neden benimle çıkmıyorsun?!“ İşte o anda ikisi daha iyi birer mangaka olabilmek için sahte bir çift oluverirler! Fakat ne Miyamoto, Uehara’nın mükemmel ana karakterine ne de Uehara; Miyamoto’nun burnu havada, havalı karakterine benzemektedir. Bu aralarındaki garip ilişki, gerçekten onların hayallerine yakınlaşabilmelerini sağlayabilecek midir yoksa daha tuhaf ve gülünç olaylara mı sebebiyet verecektir?",
        "vi": "Uehara-kun là một thằng rất thích gái 2D và ước mơ làm hoạ sĩ Manga! Tuy nhiên, giấc mơ của anh ta lại ngay lập tức bị đạp đổ khi bị một biên tập viên nhận xét rằng tác phẩm này nhìn chán chả buồn nói.\n\nTưởng như anh đã định từ bỏ giấc mơ của mình thì một cô gái trong lớp của anh, Miyamoto Niina, nhìn thấy bản phác thảo của cậu ấy và muốn bắt đầu một mối tình tưởng lãng mạn nhưng ai ngờ là giả tạo, để giúp cậu hoàn thành được bộ manga của mình!\n\nMột bộ manga về Mangaka ✖ Romcom tuổi mới lớn!",
        "pt-br": "Uehara-kun, que adora 2D, sonha em se tornar um mangaká um dia! No entanto, seu sonho é ameaçado quando um editor rejeita seu trabalho por considerá-lo muito chato.\n\nNo dia seguinte, enquanto pensa em desistir de seu sonho, uma garota de sua turma, Miyamoto Niina, vê seu manuscrito, e um pseudo-romance muito próximo para o bem de seus mangás começa!?\n\nEsta é uma comédia romântica juvenil de quadrinistas!"
      },
      "isLocked": false,
      "links": {
        "al": "161433",
        "ap": "kakunaru-ue-wa",
        "bw": "series/428112/list",
        "kt": "66841",
        "mu": "6vpifh6",
        "amz": "https://www.amazon.co.jp/dp/B0CJSQBLMH",
        "cdj": "https://www.cdjapan.co.jp/product/NEOBK-2878437",
        "ebj": "https://ebookjapan.yahoo.co.jp/books/781518",
        "mal": "155911",
        "raw": "https://younganimal.com/series/423d7471396e9",
        "engtl": "https://sevenseasentertainment.com/series/now-that-we-draw"
      },
      "officialLinks": null,
      "originalLanguage": "ja",
      "lastVolume": "",
      "lastChapter": "",
      "publicationDemographic": "seinen",
      "status": "ongoing",
      "year": 2023,
      "contentRating": "suggestive",
      "tags": [
        {
          "id": "423e2eae-a7a2-4a8b-ac03-a8351462d71d",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Romance"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "4d32cc48-9f00-4cca-9b5a-a839f0764984",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Comedy"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "b9af3a63-f058-46de-a9a0-e0c13906197a",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Drama"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "caaa44eb-cd40-4177-b930-79d3ef2afe87",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "School Life"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "e5301a23-ebd9-49dd-a0cb-2add944c7fe9",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Slice of Life"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "fad12b5e-68ba-460e-b933-9ae8318f5b65",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Gyaru"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        }
      ],
      "state": "published",
      "chapterNumbersResetOnNewVolume": false,
      "createdAt": "2023-02-26T14:06:39+00:00",
      "updatedAt": "2025-11-25T11:12:40+00:00",
      "version": 51,
      "availableTranslatedLanguages": [
        "id",
        "es-la",
        "en",
        "pt-br",
        "ar",
        "vi",
        "zh",
        "fr",
        "tr",
        "th"
      ],
      "latestUploadedChapter": "9c612a00-28a1-4a7e-887e-4baf597dc212"
    },
    "relationships": [
      {
        "id": "a10799fa-140c-44e7-9ece-d6caa242283c",
        "type": "author"
      },
      {
        "id": "9e0f30b0-a411-47a6-af60-f581ea26e7a3",
        "type": "artist"
      },
      {
        "id": "6e90b75e-d9e0-4d33-a309-b7be5ddaf95a",
        "type": "cover_art"
      },
      {
        "id": "f7d0127d-ec31-4a45-8fcf-43da53199f37",
        "type": "manga",
        "related": "preserialization"
      },
      {
        "id": "c3a21d7c-5c46-4367-9895-b8b04d6912e6",
        "type": "creator"
      }
    ]
  },
  {
    "id": "26102334-1f7b-4a5b-a64f-107c5c24a70f",
    "type": "manga",
    "attributes": {
      "title": {
        "en": "Mao"
      },
      "altTitles": [
        {
          "ja": "マオ"
        },
        {
          "en": "MAO"
        },
        {
          "zh-hk": "摩緒"
        },
        {
          "th": "หาญสู้พลิกชะตาอาถรรพณ์"
        }
      ],
      "description": {
        "en": "Onmyoji and Yokai? A girl's bizarre Taisho romance! When she was in the first grade of elementary school, her whole family was involved in an accident, but she is the only one who survived. In her third year of junior high school, she passes by the accident site again and is somehow transported back to the Taisho Era! The next day, Nanoka's physical abilities are awakened when she is told by Mao, a boy she met there who is an Onmyoji, \"You are a demon, aren't you?\"\n___\nOfficial Release:\n- Indonesian release by [Elex Media](https://www.gramedia.com/products/mao-01) (2021)",
        "ja": "小学一年生の時、一家全員が事故に巻き込まれるも自分だけ生き残った過去を持つ黄葉菜花。中学三年になった彼女が再び事故現場を通るとなぜか大正時代へ！そこで出会った陰陽師の少年・摩緒より「お前、妖だろう」と言われた翌日に菜花の身体能力が覚醒した――自身の「謎」を解き明かすため、菜花は摩緒と行動を共にする事になるが…"
      },
      "isLocked": false,
      "links": {
        "al": "106102",
        "ap": "mao",
        "bw": "series/219067/list",
        "kt": "54585",
        "mu": "gkig62s",
        "mal": "119588",
        "raw": "https://websunday.net/rensai/mao/"
      },
      "officialLinks": null,
      "originalLanguage": "ja",
      "lastVolume": "",
      "lastChapter": "",
      "publicationDemographic": "shounen",
      "status": "ongoing",
      "year": 2019,
      "contentRating": "safe",
      "tags": [
        {
          "id": "07251805-a27e-4d59-b488-f0bfbec15168",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Thriller"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "292e862b-2d17-4062-90a2-0356caa4ae27",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Time Travel"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "33771934-028e-4cb3-8744-691e866a923e",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Historical"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "36fd93ea-e8b8-445e-b836-358f02b3d33d",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Monsters"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "391b0423-d847-456f-aff0-8b0cfc03066b",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Action"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "39730448-9a5f-48a2-85b0-a70db87b1233",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Demons"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "3b60b75c-a2d7-4860-ab56-05f391bb889c",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Psychological"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "3bb26d85-09d5-4d2e-880c-c34b974339e9",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Ghosts"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "423e2eae-a7a2-4a8b-ac03-a8351462d71d",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Romance"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "4d32cc48-9f00-4cca-9b5a-a839f0764984",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Comedy"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "5fff9cde-849c-4d78-aab0-0d52b2ee1d25",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Survival"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "799c202e-7daa-44eb-9cf7-8a3c0441531e",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Martial Arts"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "87cc87cd-a395-47af-b27a-93258283bbc6",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Adventure"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "a1f53773-c69a-4ce5-8cab-fffcd90b1565",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Magic"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "ac72833b-c4e9-4878-b9db-6c8a4a99444a",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Military"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "b1e97889-25b4-4258-b28b-cd7f4d28ea9b",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Philosophical"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "b29d6a3d-1569-4e7a-8caf-7557bc92cd5d",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Gore"
            },
            "description": {},
            "group": "content",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "b9af3a63-f058-46de-a9a0-e0c13906197a",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Drama"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "c8cbe35b-1b2b-4a3f-9c37-db84c4514856",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Medical"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "caaa44eb-cd40-4177-b930-79d3ef2afe87",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "School Life"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "cdad7e68-1419-41dd-bdce-27753074a640",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Horror"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "cdc58593-87dd-415e-bbc0-2ec27bf404cc",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Fantasy"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "e5301a23-ebd9-49dd-a0cb-2add944c7fe9",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Slice of Life"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "eabc5b4c-6aff-42f3-b657-3e90cbd00b75",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Supernatural"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "ee968100-4191-4968-93d3-f82d72be7e46",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Mystery"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "f8f62932-27da-4fe4-8ee1-6779a8c5edba",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Tragedy"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        }
      ],
      "state": "published",
      "chapterNumbersResetOnNewVolume": false,
      "createdAt": "2019-12-09T02:54:33+00:00",
      "updatedAt": "2025-11-15T20:53:48+00:00",
      "version": 28,
      "availableTranslatedLanguages": [
        "es-la",
        "en",
        "pt-br",
        "zh-hk",
        "ca",
        "zh",
        "pl",
        "ar",
        "ru",
        "es"
      ],
      "latestUploadedChapter": "bdb07714-ff83-453f-a273-cc0fe4b63a38"
    },
    "relationships": [
      {
        "id": "3749c8e1-a4d3-4d98-958b-4fa575d7f6b7",
        "type": "author"
      },
      {
        "id": "3749c8e1-a4d3-4d98-958b-4fa575d7f6b7",
        "type": "artist"
      },
      {
        "id": "d4827034-a8cf-43d8-a325-ac84222b4666",
        "type": "cover_art"
      }
    ]
  },
  {
    "id": "2fec6641-beb1-4ae9-a32f-204dd06688ac",
    "type": "manga",
    "attributes": {
      "title": {
        "ja-ro": "Otonari no Tenshi-sama ni Itsunomanika Dame Ningen ni Sareteita Ken"
      },
      "altTitles": [
        {
          "ja": "お隣の天使様にいつの間にか駄目人間にされていた件"
        },
        {
          "en": "The Angel Next Door Spoils Me Rotten"
        },
        {
          "id": "Tetangga Bidadari Terlalu Memanjakanku"
        },
        {
          "pl": "Aniołek z Sąsiedztwa Niezwykle Mnie Rozpieszcza"
        },
        {
          "pt-br": "Meu Anjo de Vizinha Me Mima Demais"
        },
        {
          "ru": "Ангел по соседству меня балует"
        },
        {
          "uk": "Сусідський ангел сильно мене балує"
        },
        {
          "vi": "Thiên sứ nhà bên"
        },
        {
          "ja-ro": "OtoTen"
        },
        {
          "ro": "Îngerul de după usă mă răsfață prea mult"
        },
        {
          "tr": "Melek Komşum Beni Şımartıyor"
        }
      ],
      "description": {
        "en": "Mahiru is a beautiful girl whose classmates all call her an \"angel.\" Not only is she a star athlete with perfect grades—she's also drop-dead gorgeous. Amane‚ an average guy and self-admitted slob‚ has never thought much of the divine beauty‚ despite attending the same school. Everything changes‚ however‚ when he happens to see Mahiru sitting alone in a park during a rainstorm.",
        "ja": "高校生の藤宮周が住むマンションの隣には、「天使様」と呼ばれる学校で一番の美少女・椎名真昼が住んでいる。特に関わり合いのなかった二人だが、雨の中ずぶ濡れになっていた彼女に傘を貸したことから、不思議な交流が始まった。自堕落な一人暮らしを送る周を見かねて、なにかと世話を焼く真昼。お互いに興味ないと言い合う二人は、それでも少しずつ距離を縮めていく……。",
        "pl": "Mahiru jest piękną dziewczyną, którą koledzy z klasy nazywają \"aniołkiem\". Jest nie tylko świetnie wysportowana i ma doskonałe oceny - jest także zabójczo piękna. Amane, przeciętny facet i samozwańczy niechluj, nigdy nie myślał zbyt wiele o tej boskiej piękności, mimo że uczęszczał do tej samej szkoły. Wszystko zmienia się jednak, gdy widzi Mahiru siedzącą samotnie w parku podczas ulewy. Tak zaczyna się dziwna relacja między tą nieprawdopodobną parą!",
        "vi": "Fujimiya Amane sống một mình trong căn hộ của mình, và cô gái xinh nhất ở trường cậu, Shiina Mahiru, lại là hàng xóm của cậu. Họ hầu như chẳng bao giờ nói chuyện với nhau cho tới một ngày trời mưa cậu thấy cô không cầm theo ô và cho cô mượn. Để cảm ơn thì cô đã thường xuyên giúp anh làm việc nhà, từ đó mối quan hệ của họ bắt đầu nảy nở.",
        "pt-br": "Fujimiya Amane, um estudante do ensino médio, mora sozinho em seu apartamento. Ao lado dele mora Shiina Mahiru, a garota mais bonita da escola. Alguém que todos chamam de \"anjo\". Eles nunca conversam de verdade, mas quando Amane empresta seu guarda-chuva a Mahiru em um dia chuvoso, o relacionamento deles começa a florescer.\n\nEm pouco tempo Mahiru descobre que Amane negligencia sua cozinha e limpeza, e ela se sente obrigada a intervir.\n\nEmbora eles não tenham nenhum interesse um pelo outro, eles lentamente se aproximam...\n\nEsta é a história de amor agridoce de um jovem e sua bela vizinha de língua afiada."
      },
      "isLocked": false,
      "links": {
        "al": "122337",
        "mu": "sehzuo5",
        "mal": "130934",
        "raw": "https://magazine.jp.square-enix.com/mangaup/original/tendame/"
      },
      "officialLinks": null,
      "originalLanguage": "ja",
      "lastVolume": "",
      "lastChapter": "",
      "publicationDemographic": "shounen",
      "status": "ongoing",
      "year": 2022,
      "contentRating": "safe",
      "tags": [
        {
          "id": "423e2eae-a7a2-4a8b-ac03-a8351462d71d",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Romance"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "4d32cc48-9f00-4cca-9b5a-a839f0764984",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Comedy"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "caaa44eb-cd40-4177-b930-79d3ef2afe87",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "School Life"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "ea2bc92d-1c26-4930-9b7c-d5c0dc1b6869",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Cooking"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "f4122d1c-3b44-44d0-9936-ff7502c39ad3",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Adaptation"
            },
            "description": {},
            "group": "format",
            "version": 1
          },
          "relationships": []
        }
      ],
      "state": "published",
      "chapterNumbersResetOnNewVolume": false,
      "createdAt": "2022-01-05T18:03:22+00:00",
      "updatedAt": "2025-12-24T12:32:56+00:00",
      "version": 74,
      "availableTranslatedLanguages": [
        "id",
        "uk",
        "pt-br",
        "fr",
        "en",
        "pl",
        "tr",
        "it",
        "ru",
        "vi",
        "de",
        "ro",
        "my",
        "zh",
        "es-la"
      ],
      "latestUploadedChapter": "42a059d7-8329-42a4-a328-2a2ed1cf0b1e"
    },
    "relationships": [
      {
        "id": "0edd2663-49bc-48d6-a05c-c92a655b9c13",
        "type": "author"
      },
      {
        "id": "e09549fd-07eb-4fe1-9c1d-d7dcf43c03e8",
        "type": "artist"
      },
      {
        "id": "c8180e96-2d3d-4a9a-ace5-174dd55f36b4",
        "type": "cover_art"
      },
      {
        "id": "8516915a-51a2-44e0-a915-aff325216a26",
        "type": "manga",
        "related": "side_story"
      },
      {
        "id": "ba797a39-eddc-4033-9533-341961a1a12a",
        "type": "manga",
        "related": "colored"
      },
      {
        "id": "c9146d61-80d0-48f6-a794-de56d728171b",
        "type": "manga",
        "related": "preserialization"
      },
      {
        "id": "6d0ca397-136d-4448-ae5d-895c2c504472",
        "type": "creator"
      }
    ]
  },
  {
    "id": "4fd4f8c0-fab8-4ee5-ab9e-5907720afed9",
    "type": "manga",
    "attributes": {
      "title": {
        "en": "Iken Senki Völundio"
      },
      "altTitles": [
        {
          "ja": "異剣戦記ヴェルンディオ"
        },
        {
          "ja-ro": "Iken Senki Verndio"
        },
        {
          "en": "Völundio ~Divergent Sword Saga~"
        },
        {
          "zh": "异剑战记瓦伦迪欧"
        },
        {
          "zh-hk": "異劍戰記"
        },
        {
          "ru": "Хельк"
        },
        {
          "es-la": "Völundio: Saga de las espadas divergentes"
        },
        {
          "vi": "Volundio - Sử thi về mộng kiếm"
        }
      ],
      "description": {
        "en": "On a desperate battlefield... I'll start running a tavern!\r\n\r\nCleo, a man who has been a mercenary for 10 years, meets a mysterious girl named Kohaku. In order to survive on the battlefield, where \"different swords\" with great power are flying around, the two of them start running a \"tavern\" where soldiers gather!",
        "ja": "傭兵歴10年の男・クレオは不思議な少女・コハクと出会う。強大な力を持つ「異剣」が飛び交う戦場を生き延びるために、二人が始めたのは――兵士たちが集う「酒場」の経営！？",
        "vi": "\"Tôi muốn sống một cuộc đời yên bình và an nhàn! Giấc mơ của tôi đó! Thế nên tôi từ chối chết ở đây!\"\n\nCleo, một người lính đánh thuê có ước mơ mua nhà, trồng rau nuôi cá và sống nhàn nhã đến cuối đời. Nhưng trong lúc chạy trốn khỏi một băng cướp mạnh bất thường, anh đã gặp một cô gái bán nhân bí ẩn tự xưng là Kohaku, cho rằng nhìn thấy tương lai anh sẽ chết. Không hiểu sao, cô lại thề rằng mình sẽ bảo vệ anh khỏi mọi nguy hiểm. Liệu Cleo có sống sót được và thực hiện ước mơ của mình?",
        "es-la": "En un campo de batalla desesperado... ¡Empieza a dirigir una taberna!\r\n\r\nCleo, un hombre con 10 años de experiencia como mercenario\r\nConoce a una misteriosa chica llamada Kohaku.\r\nPara sobrevivir en el campo de batalla donde vuelan las poderosas \"otras espadas\".\r\nLo que los dos empiezan a hacer es... Dirigir una \"taberna\" donde se reúnen los soldados."
      },
      "isLocked": false,
      "links": {
        "al": "123314",
        "ap": "volundio-divergent-sword-saga",
        "kt": "60803",
        "mu": "ejcmhy8",
        "mal": "130357",
        "raw": "https://comikey.com/comics/volundio-divergent-sword-saga-manga/44/"
      },
      "officialLinks": null,
      "originalLanguage": "ja",
      "lastVolume": null,
      "lastChapter": null,
      "publicationDemographic": "shounen",
      "status": "ongoing",
      "year": 2020,
      "contentRating": "safe",
      "tags": [
        {
          "id": "391b0423-d847-456f-aff0-8b0cfc03066b",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Action"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "4d32cc48-9f00-4cca-9b5a-a839f0764984",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Comedy"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "87cc87cd-a395-47af-b27a-93258283bbc6",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Adventure"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "a1f53773-c69a-4ce5-8cab-fffcd90b1565",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Magic"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "b9af3a63-f058-46de-a9a0-e0c13906197a",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Drama"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "cdc58593-87dd-415e-bbc0-2ec27bf404cc",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Fantasy"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        }
      ],
      "state": "published",
      "chapterNumbersResetOnNewVolume": false,
      "createdAt": "2019-12-03T01:47:47+00:00",
      "updatedAt": "2025-11-15T21:21:25+00:00",
      "version": 30,
      "availableTranslatedLanguages": [
        "vi",
        "es-la",
        "en",
        "ru",
        "zh"
      ],
      "latestUploadedChapter": "90645a92-fec9-4e6d-8e37-3792efa5fad5"
    },
    "relationships": [
      {
        "id": "5168087c-5bff-4b81-b9d0-681a62abb160",
        "type": "author"
      },
      {
        "id": "5168087c-5bff-4b81-b9d0-681a62abb160",
        "type": "artist"
      },
      {
        "id": "4a0a0aef-f051-4355-ba95-40a2052e39c0",
        "type": "cover_art"
      },
      {
        "id": "10a4985d-0713-462e-a9d6-767bf91e4fd7",
        "type": "manga",
        "related": "shared_universe"
      },
      {
        "id": "1c909da4-bb40-4f69-b221-9b73d9f0c727",
        "type": "manga",
        "related": "shared_universe"
      }
    ]
  },
  {
    "id": "a58747fa-3bca-43ff-9187-549b00f43578",
    "type": "manga",
    "attributes": {
      "title": {
        "en": "Yuusha to Yobareta Nochi ni - Soshite Musou Otoko wa Kazoku wo Tsukuru"
      },
      "altTitles": [
        {
          "ja": "勇者と呼ばれた後に　―そして無双男は家族を創る―"
        },
        {
          "ja-ro": "Yuusha to Yobareta Nochi ni - Soshite Musou Otoko wa Kazoku o Tsukuru"
        },
        {
          "ja-ro": "Yuusha to Yobareta Ato ni - Soshite Musou Otoko wa Kazoku wo Tsukuru"
        },
        {
          "en": "After Being Called a Hero: The Unrivaled Man Starts a Family"
        },
        {
          "zh": "被称为勇者后，无双男建立了家庭"
        },
        {
          "vi": "Sau khi được gọi là dũng giả: Người đàn ông vô song sẽ bắt đầu lập gia đình"
        }
      ],
      "description": {
        "en": "In a world where humans and demons clash, the one who decimated the Demon Lord's army was a lone hero named Lloyd. Possessing power so immense that he was said by the Demon Lord to be near godlike, after the war, Lloyd was appointed by the king to be the lord of a remote territory and was sent far away. Furthermore, he was tasked with subduing the Emperor Dragon residing in that land, which he quickly defeated. However, the defeated dragon transformed into a beautiful woman and chose to become Lloyd's companion!?",
        "ja": "人間と魔族が争う世界――魔王軍を壊滅させたのはたったひとりの勇者、ロイドという男だった。魔王から神に近いとまで言われた力を持つロイドは戦後、王により辺境の領主を命じられ、遠ざけられた。さらにその地に棲む皇帝竜の討伐も頼まれたが、早々に倒してしまう。しかし敗れた竜は、美しい女性に変化し、ロイドの伴侶になることに!?これは最強と呼ばれながらも自分自身の価値を見つけられなかった男が「家族」を見つける物語。",
        "vi": "Trong một thế giới nơi con người và ác quỷ xung đột - người đã tiêu diệt quân đội của Ma vương là một dũng giả đơn độc có tên là Lloyd. Người sở hữu sức mạnh khủng khiếp đến mức được Ma vương cho là gần giống thần thánh, sau chiến tranh, Lloyd được nhà vua phong làm lãnh chúa của một vùng lãnh thổ nằm gần rìa biên giới vương quốc. Hơn nữa, anh còn được giao nhiệm vụ chinh phục Long vương đang cư trú tại vùng đất đó và anh đã nhanh chóng đánh bại được Long vương. Tuy nhiên, con rồng bị đánh bại đã biến thành một thiếu nữ xinh đẹp và đã chọn trở thành người bạn đời của Lloyd!? Đây là câu chuyện về một người đàn ông, được ca ngợi là người mạnh nhất, nhưng không hề nhận ra giá trị của bản thân, mà đang tìm cho mình một “gia đình”."
      },
      "isLocked": false,
      "links": {
        "al": "168615",
        "ap": "yuusha-to-yobareta-nochi-ni-soshite-musou-otoko-wa-kazoku-wo-tsukuru",
        "bw": "series/444232",
        "kt": "68677",
        "mu": "a4kzt6o",
        "amz": "https://www.amazon.co.jp/dp/B0CNZSQP92",
        "cdj": "https://www.cdjapan.co.jp/product/NEOBK-2908825",
        "ebj": "https://ebookjapan.yahoo.co.jp/books/796131",
        "mal": "161941",
        "raw": "https://pocket.shonenmagazine.com/episode/4856001361514394738"
      },
      "officialLinks": null,
      "originalLanguage": "ja",
      "lastVolume": "10",
      "lastChapter": "80",
      "publicationDemographic": "shounen",
      "status": "completed",
      "year": 2023,
      "contentRating": "suggestive",
      "tags": [
        {
          "id": "391b0423-d847-456f-aff0-8b0cfc03066b",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Action"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "39730448-9a5f-48a2-85b0-a70db87b1233",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Demons"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "423e2eae-a7a2-4a8b-ac03-a8351462d71d",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Romance"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "a1f53773-c69a-4ce5-8cab-fffcd90b1565",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Magic"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "b9af3a63-f058-46de-a9a0-e0c13906197a",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Drama"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "cdc58593-87dd-415e-bbc0-2ec27bf404cc",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Fantasy"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "f4122d1c-3b44-44d0-9936-ff7502c39ad3",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Adaptation"
            },
            "description": {},
            "group": "format",
            "version": 1
          },
          "relationships": []
        }
      ],
      "state": "published",
      "chapterNumbersResetOnNewVolume": false,
      "createdAt": "2023-08-07T20:17:36+00:00",
      "updatedAt": "2025-10-16T10:22:35+00:00",
      "version": 38,
      "availableTranslatedLanguages": [
        "vi",
        "es-la",
        "en",
        "fr",
        "zh"
      ],
      "latestUploadedChapter": "2086d370-80cf-4a29-a65c-bffcf4fe1b32"
    },
    "relationships": [
      {
        "id": "c4eca415-f2f1-49a8-b22e-bcc9f46da2e1",
        "type": "author"
      },
      {
        "id": "27648499-b39c-4555-a2f8-7918fe95b654",
        "type": "artist"
      },
      {
        "id": "736a7f0c-1ccf-4e0b-9cbd-4eb3fc9e3b8e",
        "type": "cover_art"
      },
      {
        "id": "28c85242-2605-4abf-9fd7-2879dc58f7e6",
        "type": "creator"
      }
    ]
  },
  {
    "id": "157ab2cc-1fc7-4b29-8955-72d94a140982",
    "type": "manga",
    "attributes": {
      "title": {
        "ja-ro": "Kesa mo Yuraretemasu"
      },
      "altTitles": [
        {
          "ja": "今朝も揺られてます"
        },
        {
          "en": "They are Still Being Shaken This Morning"
        },
        {
          "zh": "今朝摇曳依旧"
        },
        {
          "uk": "Цього ранку їх досі трясе"
        },
        {
          "vi": "Thình Thịch Mỗi Sớm Mai"
        }
      ],
      "description": {
        "en": "6:58 AM, Commuting to school via a train bound for Maihara. That girl whose name I don't even know, me,... and the passengers!? The bittersweet atmosphere created by the two high school students gets the passengers excited and reveals their true feelings!!",
        "ja": "午前6時58分舞原行きの通学電車。名前も知らないあの子と僕…と、その乗客⁉高校生の男女２人が醸し出す甘酸っぱい雰囲気に、乗客たちが心情駄々洩れで盛り上がる‼新感覚のシチュエーションラブコメ‼",
        "uk": "Це історія про таємне кохання, потяги та шиперство. Хлопець та дівчина щоранку їдуть 20 хвилин приміським потягом до різних шкіл та схоже він встиг закохатись за ці поїздки разом з нею. Чи зможе він зізнатися їй? А також... Те, про що вони не здогадуються: є ще 3 пасажири, які таємно підтримують таємне кохання хлопця до дівчини! Що очікувати наступної поїздки?",
        "pt-br": "Esta é a típica história de um garoto que está secretamente apaixonado por uma garota. Ambos compartilham uma viagem de 20 minutos no trem do subúrbio a caminho de escolas diferentes. O garoto será capaz de se aproximar da garota e confessar seu amor? E, além disso... O que ele não sabe: há três outros passageiros que secretamente apoiam o amor secreto do garoto pela garota! Leia agora as confusões que acontecem quando o garoto tenta se aproximar da garota; do criador de *[Jitsu wa Watashi wa](https://mangadex.org/title/a990c2a1-b54f-4f4f-986c-3cdab1c9f2f9/)* e *[Yumemi ga Oka Wonderland](https://mangadex.org/title/32bbfefa-8a58-462c-bc9e-e9dd3bd4c152/)*."
      },
      "isLocked": false,
      "links": {
        "al": "172729",
        "ap": "kesa-mo-yuraretemasu",
        "bw": "series/479800/list",
        "kt": "71178",
        "mu": "a8zfvn1",
        "amz": "https://www.amazon.co.jp/dp/B0D9WMC8MC",
        "ebj": "https://ebookjapan.yahoo.co.jp/books/849438",
        "mal": "167099",
        "raw": "https://championcross.jp/series/5424068a938fc/",
        "engtl": "https://sevenseasentertainment.com/series/they-are-still-being-shaken-this-morning/"
      },
      "officialLinks": null,
      "originalLanguage": "ja",
      "lastVolume": "",
      "lastChapter": "",
      "publicationDemographic": "shounen",
      "status": "ongoing",
      "year": 2024,
      "contentRating": "safe",
      "tags": [
        {
          "id": "423e2eae-a7a2-4a8b-ac03-a8351462d71d",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Romance"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "4d32cc48-9f00-4cca-9b5a-a839f0764984",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Comedy"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "b9af3a63-f058-46de-a9a0-e0c13906197a",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Drama"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "caaa44eb-cd40-4177-b930-79d3ef2afe87",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "School Life"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "e5301a23-ebd9-49dd-a0cb-2add944c7fe9",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Slice of Life"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        }
      ],
      "state": "published",
      "chapterNumbersResetOnNewVolume": false,
      "createdAt": "2024-02-09T13:49:47+00:00",
      "updatedAt": "2025-11-23T12:55:02+00:00",
      "version": 45,
      "availableTranslatedLanguages": [
        "zh",
        "vi",
        "pt-br",
        "en",
        "fr",
        "uk",
        "es-la",
        "id"
      ],
      "latestUploadedChapter": "89f9a144-cfd4-460d-b50e-dbda70704272"
    },
    "relationships": [
      {
        "id": "2bdef24b-6c77-4097-89b2-03201c843aed",
        "type": "author"
      },
      {
        "id": "2bdef24b-6c77-4097-89b2-03201c843aed",
        "type": "artist"
      },
      {
        "id": "f8d394df-8a3e-4fa1-a819-0b0ec9c7a3a4",
        "type": "cover_art"
      },
      {
        "id": "a990c2a1-b54f-4f4f-986c-3cdab1c9f2f9",
        "type": "manga",
        "related": "shared_universe"
      },
      {
        "id": "9b699d71-882d-4386-aeaa-ddf5523c73b0",
        "type": "creator"
      }
    ]
  },
  {
    "id": "0a580438-bc72-4503-940b-12a5da881b56",
    "type": "manga",
    "attributes": {
      "title": {
        "ja-ro": "Kimi wa Yotsuba no Clover"
      },
      "altTitles": [
        {
          "ja": "きみは四葉のクローバー"
        },
        {
          "en": "You Are a Four-Leaf Clover"
        },
        {
          "zh": "恋人手中四叶草"
        },
        {
          "zh-hk": "戀人手中四葉草"
        },
        {
          "ar": "أنتِ زهرة الحظ"
        },
        {
          "pt-br": "Você é um Trevo de Quatro Folhas"
        },
        {
          "vi": "Cậu là cỏ 4 lá"
        }
      ],
      "description": {
        "ar": "كان يويتشي محبوبًا في السابق، لكنه الآن يتعرض للتنمر بشكل مفرط. وفجأة، تظهر أمامه حبيبته الأولى يوتسُوها. ما هدف هذه الفتاة اللطيفة والشجاعة…؟",
        "en": "Uichi was once popular, but now he is being bullied excessively. Then suddenly, his first love, Yotsuha, appears in front of him. What is this cute and brave girl's purpose…?",
        "ja": "かつての人気者で、今は過激ないじめを受ける宇一。そんな彼の前に突然現れた初恋の相手・よつは。可愛く健気な彼女の目的とは一体…！？",
        "vi": "Câu chuyện romcom nhẹ nhàng về hành trình chữa lành trái tim đã tan vỡ của main",
        "zh": "某天，曾很有人气的宇一的生活陡然一变。 以往光芒四射的日子被用抹布也无法擦去的黑暗所笼罩。 这时，熟悉宇一过去的初恋—— 四叶突然出现在了他的面前。 她的目的究竟是…！？",
        "pt-br": "Uichi já foi um garoto popular e deseja ser um veterinário, porém com o passar do tempo virou alvo de bullying. Então, quando tudo estava sendo horrível, de repente, seu primeiro amor, Yotsuba, aparece em sua frente. Qual será o objetivo dessa linda e corajosa garota que não aparecia a 7 anos?",
        "zh-hk": "某天，曾很有人氣的宇一的生活陡然一變。 以往光芒四射的日子被抹布也無法擦去的黑暗所籠罩。 這時，熟悉宇一過去的初戀── 四葉突然出現在了他的面前。 她的目的究竟是…！ ？"
      },
      "isLocked": false,
      "links": {
        "al": "180647",
        "ap": "kimi-wa-yotsuba-no-clover",
        "bw": "series/494989/list",
        "kt": "74062",
        "mu": "3fv0my9",
        "amz": "https://www.amazon.co.jp/dp/B0DMTJ78CF",
        "cdj": "https://www.cdjapan.co.jp/product/NEOBK-3080197",
        "ebj": "https://ebookjapan.yahoo.co.jp/books/867189",
        "mal": "172247",
        "raw": "https://championcross.jp/series/f744ef1a6decb"
      },
      "officialLinks": null,
      "originalLanguage": "ja",
      "lastVolume": null,
      "lastChapter": null,
      "publicationDemographic": "shounen",
      "status": "ongoing",
      "year": 2024,
      "contentRating": "safe",
      "tags": [
        {
          "id": "292e862b-2d17-4062-90a2-0356caa4ae27",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Time Travel"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "3b60b75c-a2d7-4860-ab56-05f391bb889c",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Psychological"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "423e2eae-a7a2-4a8b-ac03-a8351462d71d",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Romance"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "b9af3a63-f058-46de-a9a0-e0c13906197a",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Drama"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "caaa44eb-cd40-4177-b930-79d3ef2afe87",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "School Life"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "f8f62932-27da-4fe4-8ee1-6779a8c5edba",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Tragedy"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        }
      ],
      "state": "published",
      "chapterNumbersResetOnNewVolume": false,
      "createdAt": "2024-10-06T05:54:24+00:00",
      "updatedAt": "2025-12-09T00:41:41+00:00",
      "version": 35,
      "availableTranslatedLanguages": [
        "es-la",
        "en",
        "id",
        "zh",
        "pt-br",
        "vi",
        "ar",
        "fr"
      ],
      "latestUploadedChapter": "228a661c-a93b-4d6b-a2ae-e42c5fea6848"
    },
    "relationships": [
      {
        "id": "4c635f1f-b4e4-4d26-8039-a323e49cde21",
        "type": "author"
      },
      {
        "id": "4c635f1f-b4e4-4d26-8039-a323e49cde21",
        "type": "artist"
      },
      {
        "id": "69b94ff0-6e11-41b1-8de1-4af9cb001af6",
        "type": "cover_art"
      },
      {
        "id": "434d3672-6728-4f1d-ac6e-19ba839a71ad",
        "type": "creator"
      }
    ]
  },
  {
    "id": "4e0ab019-afcb-4fd9-98eb-fcb28cf7fc81",
    "type": "manga",
    "attributes": {
      "title": {
        "ja": "Toaru Majutsu no Index Gaiden - Toaru Kagaku no Mental Out"
      },
      "altTitles": [
        {
          "ja": "とある魔術の禁書目録外伝　とある科学の心理掌握"
        },
        {
          "en": "A Certain Scientific Mental Out"
        },
        {
          "ar": "مانجا الملكة النحلة شوكهو ميساكي - مينتل-آوت"
        },
        {
          "ru": "Некий научный Ментал Аут"
        }
      ],
      "description": {
        "ar": "هذه القصة الفرعية من سلسلة توارو ببطولة الملكة النحلة شوكهو ميساكي\n\nاقتربت انتخابات مجلس طلاب توكيواداي. شوكهو ميساكي، وهي صاحبة أكبر زمرة في المدرسة، دخلت الانتخابات غريمةً لنائبة رئيسة المجلس ومتحدية لها. وأثناء الانتخابات دخل [أثرٌ] مُعَيّن مدرسة البنات المخمليات، ويدعي أنه المصنف الأول السابق...؟!",
        "en": "The Tokiwadai student council election is approaching. Shokuhou Misaki, one of the leading candidates, is in the midst of an election campaign in spite of her own expectations due to the people around her and the fate of being the head of the largest clique...!!",
        "id": "Pemilihan presiden dewan siswa Tokiwadai semakin mendekat. Shokuhou Misaki, salah satu kandidat utama, tengah berada dalam kampanye pemilihan meskipun tidak sesuai ekspektasinya sendiri karena pengaruh orang-orang di sekitarnya dan takdir menjadi kepala kelompok terbesar...!!",
        "ja": "常盤台生徒会長選、迫る。有力候補の一人とされる食蜂操祈は、彼女自身の思惑とはうらはらに、周囲の人々と、最大派閥の長である宿命によって選挙戦の渦中へと――。",
        "ru": "Приближаются выборы в студенческий совет Токивадая. Шокухо Мисаки, одна из ведущих кандидатов, находится в разгаре избирательной кампании, несмотря на ее собственные ожидания из-за окружающих ее людей и судьбы быть главой крупнейшей клики!.."
      },
      "isLocked": false,
      "links": {
        "al": "137145",
        "ap": "toaru-kagaku-no-mental-out",
        "kt": "60577",
        "mu": "2gsdzfg",
        "mal": "139100",
        "raw": "https://comic.webnewtype.com/contents/mentalout/"
      },
      "officialLinks": null,
      "originalLanguage": "ja",
      "lastVolume": "",
      "lastChapter": "",
      "publicationDemographic": "shounen",
      "status": "ongoing",
      "year": 2021,
      "contentRating": "suggestive",
      "tags": [
        {
          "id": "256c8bd9-4904-4360-bf4f-508a76d67183",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Sci-Fi"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "391b0423-d847-456f-aff0-8b0cfc03066b",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Action"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "4d32cc48-9f00-4cca-9b5a-a839f0764984",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Comedy"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "b9af3a63-f058-46de-a9a0-e0c13906197a",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Drama"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "caaa44eb-cd40-4177-b930-79d3ef2afe87",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "School Life"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "e5301a23-ebd9-49dd-a0cb-2add944c7fe9",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Slice of Life"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "eabc5b4c-6aff-42f3-b657-3e90cbd00b75",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Supernatural"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        }
      ],
      "state": "published",
      "chapterNumbersResetOnNewVolume": false,
      "createdAt": "2021-10-10T10:57:41+00:00",
      "updatedAt": "2025-11-15T19:23:52+00:00",
      "version": 27,
      "availableTranslatedLanguages": [
        "es-la",
        "fr",
        "zh",
        "en",
        "pt-br",
        "vi",
        "id",
        "ar",
        "ru"
      ],
      "latestUploadedChapter": "0ade2ba9-11c4-4a94-8882-42d3a6220772"
    },
    "relationships": [
      {
        "id": "2d4c6987-4017-4c46-a3d1-88c6d94392d7",
        "type": "author"
      },
      {
        "id": "1e2aac08-7149-4603-bac3-05708fbba6ae",
        "type": "artist"
      },
      {
        "id": "051b54e3-55e2-460f-bd18-86fd26562efe",
        "type": "cover_art"
      },
      {
        "id": "229e5177-2e71-4642-bd56-a9b0b0ba0e60",
        "type": "manga",
        "related": "main_story"
      },
      {
        "id": "69aa984a-f5c0-4505-a11f-fe50e5fd16c9",
        "type": "manga",
        "related": "shared_universe"
      },
      {
        "id": "84568957-a4ff-4419-8bf6-35b08590b2eb",
        "type": "manga",
        "related": "shared_universe"
      },
      {
        "id": "a828036b-c905-4798-aa84-593fef1e10ab",
        "type": "manga",
        "related": "shared_universe"
      },
      {
        "id": "d00bd104-d9b2-4ee9-a088-b5065d1c406a",
        "type": "manga",
        "related": "main_story"
      },
      {
        "id": "e10c02da-e7a3-40e2-8b3d-c6f769d4618c",
        "type": "manga",
        "related": "shared_universe"
      },
      {
        "id": "e8d89021-c5e3-4f1c-aa21-fd275344b136",
        "type": "manga",
        "related": "shared_universe"
      },
      {
        "id": "cf398a58-ad60-4fa0-9a86-4be7e770fc84",
        "type": "creator"
      }
    ]
  },
  {
    "id": "99b8eaeb-9041-4bfd-8eb7-d72addc88eb7",
    "type": "manga",
    "attributes": {
      "title": {
        "en": "Megami no Café Terrace"
      },
      "altTitles": [
        {
          "ja": "女神のカフェテラス"
        },
        {
          "ja-ro": "Megami no Kafeterasu"
        },
        {
          "en": "The Café Terrace and Its Goddesses"
        },
        {
          "en": "Goddess Café Terrace"
        },
        {
          "zh": "女神的露天咖啡厅"
        },
        {
          "fr": "Le café terrasse des déesses"
        },
        {
          "ne": "देवीहरूको क्याफे टेरेस"
        },
        {
          "ru": "Терраса-кафе богинь"
        },
        {
          "vi": "Quán Cà Phê Nữ Thần"
        },
        {
          "vi": "Tiệm Cà Phê Nữ Thần"
        }
      ],
      "description": {
        "en": "Kasukabe Hayato has been accepted to Tokyo U on his first try. Receiving news of his grandmother's death, he returns to his childhood home, Cafe Terrace Familia, for the first time in three years to find five strange girls there who claim to be \"Grandma's Family\"!\n___\n**Links:**\n- Alternative Official English - [K MANGA](https://kmanga.kodansha.com/title/10009/episode/319474) (U.S. Only)",
        "ja": "東大現役合格の秀才・粕壁 隼。ケンカ別れしていた祖母の訃報を聞いて、3年ぶりに海辺の町の古びた実家「カフェテラス・ファミリア」に帰ると、そこには見知らぬ５人の女の子が！ しかも彼女たちは「おばあちゃんの家族」を名乗り…!? 運命の女×５との贅沢すぎる共同生活が始まるっ！『涼風』『君町』『風夏』の瀬尾公治が描く一つ屋根の下ハーレム！ どの娘に恋する？どの娘を愛でる？",
        "ru": "Спустя три года, после ссоры со своей бабушкой, Хаято Касукабэ возвращается в свой родной дом в котором поселилось пять девушек. Выясняется, что бабушка Хаято позволила девушкам жить в этом доме, а те заботились о ней до самой её смерти. Так начинается история Хаято и пяти \"Богинь\".",
        "vi": "Kasukabe Hayato đã được nhận vào Đại Học Tokyo ngay trong lần thi đầu tiên. Nhưng sau khi nhận được tin bà nội qua đời, anh trở về ngôi nhà thời thơ ấu của mình, quán cà phê Familia.  Và thấy 5 cô gái lạ mặt tự xưng là \"Gia đình của bà\"! Cuộc sống mới của Hayato tại một thị trấn ven biển với năm cô gái định mệnh bắt đầu từ đây!"
      },
      "isLocked": false,
      "links": {
        "al": "129694",
        "ap": "the-cafe-terrace-and-its-goddesses",
        "kt": "60004",
        "mu": "obrt72i",
        "mal": "133696",
        "raw": "https://pocket.shonenmagazine.com/episode/3269632237257218878"
      },
      "officialLinks": null,
      "originalLanguage": "ja",
      "lastVolume": "22",
      "lastChapter": "217",
      "publicationDemographic": "shounen",
      "status": "completed",
      "year": 2021,
      "contentRating": "suggestive",
      "tags": [
        {
          "id": "423e2eae-a7a2-4a8b-ac03-a8351462d71d",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Romance"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "4d32cc48-9f00-4cca-9b5a-a839f0764984",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Comedy"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "aafb99c1-7f60-43fa-b75f-fc9502ce29c7",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Harem"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "b9af3a63-f058-46de-a9a0-e0c13906197a",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Drama"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "e5301a23-ebd9-49dd-a0cb-2add944c7fe9",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Slice of Life"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "ea2bc92d-1c26-4930-9b7c-d5c0dc1b6869",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Cooking"
            },
            "description": {},
            "group": "theme",
            "version": 1
          },
          "relationships": []
        },
        {
          "id": "ee968100-4191-4968-93d3-f82d72be7e46",
          "type": "tag",
          "attributes": {
            "name": {
              "en": "Mystery"
            },
            "description": {},
            "group": "genre",
            "version": 1
          },
          "relationships": []
        }
      ],
      "state": "published",
      "chapterNumbersResetOnNewVolume": false,
      "createdAt": "2021-02-22T13:11:51+00:00",
      "updatedAt": "2025-11-15T19:20:01+00:00",
      "version": 79,
      "availableTranslatedLanguages": [
        "fr",
        "pt-br",
        "es-la",
        "zh",
        "ru",
        "vi",
        "en",
        "tr",
        "id",
        "it"
      ],
      "latestUploadedChapter": "55a54517-c764-409b-81a7-b70267352e5e"
    },
    "relationships": [
      {
        "id": "21fa4fed-42f6-4b2d-bf1c-5ef468632489",
        "type": "author"
      },
      {
        "id": "21fa4fed-42f6-4b2d-bf1c-5ef468632489",
        "type": "artist"
      },
      {
        "id": "aa95adea-2c84-4232-824f-f3b3567bcb81",
        "type": "cover_art"
      }
    ]
  }
]

export const testCover: CoverUrlResult[] = [
  {
    "mangaId": "b5b21ca1-bba5-4b9a-8cd1-6248f731650b",
    "coverUrl": "https://uploads.mangadex.org/covers/b5b21ca1-bba5-4b9a-8cd1-6248f731650b/5c866522-5e27-45ad-b373-7a61c1a92d1c.jpg"
  },
  {
    "mangaId": "356de811-ae92-48f1-b93b-cfdf0f8d02e4",
    "coverUrl": "https://uploads.mangadex.org/covers/356de811-ae92-48f1-b93b-cfdf0f8d02e4/1713fccc-2c92-46ea-aada-facf03b98f6e.jpg"
  },
  {
    "mangaId": "26102334-1f7b-4a5b-a64f-107c5c24a70f",
    "coverUrl": "https://uploads.mangadex.org/covers/26102334-1f7b-4a5b-a64f-107c5c24a70f/d25a7233-5566-4c1f-9727-dd12f8fc84a2.jpg"
  },
  {
    "mangaId": "2fec6641-beb1-4ae9-a32f-204dd06688ac",
    "coverUrl": "https://uploads.mangadex.org/covers/2fec6641-beb1-4ae9-a32f-204dd06688ac/919c5273-69b9-4a09-aa7d-b50b34747757.jpg"
  },
  {
    "mangaId": "4fd4f8c0-fab8-4ee5-ab9e-5907720afed9",
    "coverUrl": "https://uploads.mangadex.org/covers/4fd4f8c0-fab8-4ee5-ab9e-5907720afed9/d08c8b0a-4a53-4f98-a2ff-bcb365c92ed9.jpg"
  },
  {
    "mangaId": "a58747fa-3bca-43ff-9187-549b00f43578",
    "coverUrl": "https://uploads.mangadex.org/covers/a58747fa-3bca-43ff-9187-549b00f43578/7e851557-c306-48a8-ba24-8ba5212aab7a.jpg"
  },
  {
    "mangaId": "157ab2cc-1fc7-4b29-8955-72d94a140982",
    "coverUrl": "https://uploads.mangadex.org/covers/157ab2cc-1fc7-4b29-8955-72d94a140982/10275f4a-ff79-45b8-8b42-b8378b2a7ca6.jpg"
  },
  {
    "mangaId": "0a580438-bc72-4503-940b-12a5da881b56",
    "coverUrl": "https://uploads.mangadex.org/covers/0a580438-bc72-4503-940b-12a5da881b56/9c10e0da-52a3-4b20-bab3-3e524ff28397.jpg"
  },
  {
    "mangaId": "4e0ab019-afcb-4fd9-98eb-fcb28cf7fc81",
    "coverUrl": "https://uploads.mangadex.org/covers/4e0ab019-afcb-4fd9-98eb-fcb28cf7fc81/7737fb58-ff1f-4a78-b992-bd7aefa839e3.jpg"
  },
  {
    "mangaId": "99b8eaeb-9041-4bfd-8eb7-d72addc88eb7",
    "coverUrl": "https://uploads.mangadex.org/covers/99b8eaeb-9041-4bfd-8eb7-d72addc88eb7/1f82f18d-b2a5-4cff-bbca-044a41772f57.jpg"
  }
]
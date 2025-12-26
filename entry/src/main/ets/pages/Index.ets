import { kvStoreGet } from '../entryability/EntryAbility'
import { hilog } from '@kit.PerformanceAnalysisKit';
import { Fond } from './Fond';
import { BookShelf } from './BookShelf';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  pageStack: NavPathStack = new NavPathStack();

  @Builder
  tabBarBuilder() {

  }

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End }) {
        // TabContent(){
        //   BookShelf()
        //     .height('100%')
        //     .width('100%')
        // }.tabBar('书架')
        TabContent() {
          Fond()
            .height('100%')
            .width('100%')
        }.tabBar('发现')
      }
    }.padding(16)
  }
}

// Navigation(this.pageStack) {
//   NavDestination() {
//     BookShelfBuild()
//   }
//   NavDestination() {
//     FondBuild()
//   }
// }
// .mode(NavigationMode.Auto)
// .titleMode(NavigationTitleMode.Mini)
// .title('书架')
// .hideBackButton(true)
// .hideTitleBar(true)
// .toolbarConfiguration([{
//   'value': '书架',
//   'icon': $r('app.media.bookshelf'),
//   'activeIcon':$r('app.media.bookshelf_active'),
//   'status':2,
//   'action': () => {
//     // this.pageStack.pushPathByName('BookShelf',null,false)
//   }
// },{
//   'value': '发现',
//   'icon': $r('app.media.fond'),
//   'activeIcon':$r('app.media.fond_active'),
//   'status':0,
//   'action': () => {
//     // this.pageStack.pushPathByName('Fond',null,false)
//   }
// }])
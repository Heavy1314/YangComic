import {hilog} from '@kit.PerformanceAnalysisKit'

@Component
export struct BookShelf {
  @State message: string = 'Book';
  @Provide('NavPathStack') pageStack: NavPathStack = new NavPathStack();

  // onAppear(event: () => void): CommonAttribute {
  //   hilog.info( 0x0000,'testTag','%{public}s','onAppear');
  //   return;
  // }

  aboutToAppear(): void {
    hilog.info( 0x0000,'testTag','%{public}s','onAppear');
  }

  build() {
      Text(this.message)
        .onClick(()=>{
          this.message='Book'
        })
  }
}

@Builder
export function BookShelfBuild() {
  BookShelf();
}


/**
 *
 * NavDestination(){
RelativeContainer() {
Text(this.message)
.id('BookShelfHelloWorld')
.fontSize($r('app.float.page_text_font_size'))
.fontWeight(FontWeight.Bold)
.alignRules({
center: { anchor: '__container__', align: VerticalAlign.Center },
middle: { anchor: '__container__', align: HorizontalAlign.Center }
})
.onClick(() => {
this.message = 'Book';
})
}
.height('100%')
.width('100%')
}
.height('100%')
.width('100%')
.hideTitleBar(true)
.hideBackButton(true)
.backgroundColor('rgba(0,0,255,0.5)')
.onReady((ctx: NavDestinationContext)=>{
this.pageStack=ctx.pathStack
})
 */
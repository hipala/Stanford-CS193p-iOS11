# Stanford-CS193p
Fall 2017-18 (based on iOS 11 and Swift 4)

Stanford University's CS193p [on iTunesU](https://itunes.apple.com/vn/course/developing-ios-11-apps-with-swift/id1309275316) 

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/CS193p.png)

隔了許久觀看CS193p新課程當第二輪複習，吸收先前還無法領悟的環節。

## Lecture 1: Introduction to iOS 11, Xcode 9 and Swift 4

示範用Xcode撰寫翻牌小遊戲。

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/Lecture-1.png)

包含Storyboard和程式碼如何交互，首次使用可搭配參考我的[初探Xcode筆記](http://pala.tw/working-with-xcode/)。這門適合有程式語言基礎的學生，並不適合從零開始學習iOS開發。

帶到觀念有Xcode編輯器介紹、IBOutlet和IBAction拉線；if-else條件判斷式、Array、func函式介紹和Property Observer。

下一堂課學習曲線突然陡升。

## Lecture 2: MVC's

說明Model-View-Controller(MVC)模式。

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/mvc.jpg)

延續Lecture 1範例，把原來全部寫在ViewController的內容引入MVC模式重構。如果剛接觸沒多久，會覺得跳來跳去有點不習慣，比如說寫在ViewController裡的東西，已經被包在Model裡，不像前一堂課通通寫在一起很直觀。

提到Class和Struct的區別、初始化概念、Type Property and Method、Lazy var、Optional、Ternary Operators。

老師的教學很好，會先用比較簡單好理解的方式寫過，「恩恩沒錯就是這樣」，再用進階的短方法讓人感到「哇！」還有這招啊，然後如果看不懂就會按暫停懷著受挫的心情想著「剛剛發生事ヾ(;ﾟ;Д;ﾟ;)ﾉﾞ」陷入沈默，例如「？？」語法。

但我是第二輪了所以還好。替翻牌遊戲加入更彈性的擴充和比對功能。

## Lecture 3: Swift Programming Language

開頭介紹Auto Layout和Stack View繼續調整第一堂課的小遊戲；也附上去年剛接觸的[Auto Layout筆記](http://pala.tw/learn-auto-layout/)。

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/access-controlg.jpg)

課程帶到Computed Properties、Access Control並回頭繼續修改，還記得第一次看到private覺得相當陌生，因為大部分的線上教學並不會特別涉入這個環節，讓我當初信心被各種碾壓過去。花了不少時間回頭替專案依依加上private，看起來完整多了。

接著教提升可讀性的Extensions、說明enum後深入Optional，最後以Memory Management收尾，拉線看到的關鍵字weak登場啦。先劇透一下，self後面也會跟ARC關係連接起來。





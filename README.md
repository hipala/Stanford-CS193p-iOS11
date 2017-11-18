# Stanford-CS193p
Fall 2017-18 (based on iOS 11 and Swift 4)

Stanford University's CS193p [on iTunesU](https://itunes.apple.com/vn/course/developing-ios-11-apps-with-swift/id1309275316) 

隔了許久觀看CS193p新課程當第二輪複習，吸收先前還無法領悟的環節。

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/CS193p.png)


## Lecture 1: Introduction to iOS 11, Xcode 9 and Swift 4

示範用Xcode撰寫翻牌小遊戲。

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/Lecture-1.png)

包含Storyboard和程式碼如何交互，首次使用可搭配參考我的[初探Xcode筆記](http://pala.tw/working-with-xcode/)。這門適合有程式語言基礎的學生，並不適合從零開始學習iOS開發。

帶到觀念有Xcode編輯器介紹、IBOutlet和IBAction拉線；if-else條件判斷式、Array、func函式介紹和Property Observer。

下一堂課學習曲線突然陡升。


## Lecture 2: MVC's

說明Model-View-Controller(MVC)模式。

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/mvc.jpg)

延續Lecture 1範例，把原來全部寫在ViewController的內容引入MVC模式重構。好比管理學的書籍原先「理論篇」和「應用篇」是寫在同一本，今天覺得啊這樣太重了～於是把書解體依內容另外編成小冊子，可以單獨看感興趣的部分，但是如果要完全搞懂還是需要交互對照。

如果剛接觸沒多久，會覺得跳來跳去有點不習慣：思考開始過載、腦袋冒煙，一場在大腦穿針引線還原場景的戲碼正在上演。原先寫在ViewController裡的東西，已經個別被包在Model裡只露出個線頭say Hi，較不直觀，但應用邏輯清楚。

提到Class和Struct的區別、初始化概念、Type Property and Method、Lazy var、Optional、Ternary Operators。

老師的教學很好，會先用比較簡單好理解的方式寫過，「恩恩沒錯就是這樣」，再用進階的短方法讓人感到「哇！」還有這招啊，如果看不懂會按暫停懷著受挫的心情想著「剛剛發生事ヾ(;ﾟ;Д;ﾟ;)ﾉﾞ」陷入沈默，「難道我過去的付出都是浮雲嗎！？為什麼第二堂課就跟不上了啊啊啊」

是的，原先可能以為是湖泊，慢慢的會發現是一望無際的海洋。

但我是第二輪了所以還好。替翻牌遊戲加入更彈性的擴充和比對功能。


## Lecture 3: Swift Programming Language

Swift語言介紹，大多是投影片解釋，實際寫程式的練習時間很少。

開頭介紹Auto Layout和Stack View繼續調整小遊戲畫面；附上去年剛接觸的[Auto Layout筆記](http://pala.tw/learn-auto-layout/)。

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/access-control.jpg)

課程帶到Computed Properties、Access Control並回頭繼續修改，還記得第一次看到private覺得相當陌生，因為大部分的線上教學並不會特別涉入這個環節，讓我當初信心被各種碾壓。不過還好信心雖然無法拿來吃，但和高級西點相同，被壓了還是會活跳跳的反彈。

老師花不少時間回頭替專案加上private，看起來完整多了。

也可以參考[The Complete Understanding of Access Control in Swift](https://www.bobthedeveloper.io/blog/the-complete-understanding-of-access-control-in-swift)，查資料常常遇到他，看著都臉熟了呢。

接著教提升可讀性的Extensions、說明enum後深入Optional，其實這兩個是有關係的。Optional chaining背後就是不斷的switch、switch、switch。

最後以Memory Management收尾，拉線看到的關鍵字weak登場啦。先劇透一下，self跟Automatic Reference Counting (ARC)也有關係喔。


## Lecture 4: More Swift

Protocols和Closures，重量級登場「碰～（效果音）」

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/protocols.jpg)

Protocols就像網紅，我們在接觸新領域時往往很快就能發現代表人物，雖然很快的能叫出名字，但是隨著揭露不同面向也會有更深層的體悟。在介紹完相關知識後，老師簡單的透過三張投影片帶出Delegation，還沒有實際放出來虐人，覺得溫馨。

可以看到Protocol裡並沒有實際描述函式的內容，就像教練下達戰術，細節球員自行發揮。什麼？你說這樣只出一張嘴不負責任，還讓你聯想到慘痛的經歷...拍拍(´;ω;`)ヾ(･∀･`)

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/Lecture-4.png)

課程繼續替專案的Card加上Hashable協定，讓它能被字典當鍵值使用。接著介紹characters和String的關係後，把塞在Array裡的表情符號改成String，從字串裡透過索引取值。讓學生感受Protocol-based design of the Foundation framework.

短短幾句背後深似海，帶出了Protocol和Swift語言緊密的關係，可以到[SwiftDoc.org](http://swiftdoc.org/v3.1/)感受感受。

就像平常騎摩托車會催油門就好，但真的解體來看原來是人類智慧浩瀚的結晶啊。

最後介紹幾乎無處不在的Closures，光看投影片有點抽象，不要緊、未來見面的機會很多～

相關好文章：[Swift中的閉包（Closure）](http://www.devtalking.com//articles/closure-expressions-in-swift/)、[Swift中的Protocol知道這些就夠了](http://www.jianshu.com/p/ee92fcbb3d21)、[可選接口和接口擴展](http://swifter.tips/objc-protocol/)。

嗯花了幾個月爬到的地方，CS193p第四堂進度就推到這裡了，想到有句話說「你以為的進步，只是別人的起點」。

有點惆悵(´ー`)。

# Stanford-CS193p

Stanford University's CS193p [on iTunesU](https://itunes.apple.com/vn/course/developing-ios-11-apps-with-swift/id1309275316) 

Fall 2017-18 (based on iOS 11 and Swift 4) 

觀看CS193p秋季新課程第二輪複習，在自學程式與尋找iOS職缺的路上。

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/CS193p.png)


## Lecture 1: Introduction to iOS 11, Xcode 9 and Swift 4

示範用Xcode撰寫翻牌小遊戲。

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/Lecture-1.png)

包含Storyboard和程式碼如何交互，首次使用可搭配參考我的[初探Xcode筆記](http://pala.tw/working-with-xcode/)。這門適合有程式語言基礎的學生，並不適合從零開始學習iOS開發。

帶到觀念有Xcode編輯器介紹、IBOutlet和IBAction拉線；if-else條件判斷式、Array、func函式介紹和Property Observer。

下一堂課學習曲線突然陡升。


## Lecture 2: MVC

說明Model-View-Controller(MVC)模式。

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/mvc.jpg)

延續Lecture 1範例，把原來全部寫在ViewController的內容引入MVC模式重構。好比管理學的書籍原先「理論篇」和「應用篇」是寫在同一本，今天覺得啊這樣太重了～於是把書解體依內容另外編成小冊子，可以單獨看感興趣的部分，但是如果要完全搞懂還是需要交互對照。

如果剛接觸沒多久，會覺得跳來跳去有點不習慣：思考開始過載、腦袋冒煙，一場在大腦穿針引線還原場景的戲碼正在上演。原先寫在ViewController裡的東西，已經個別被包在Model裡只露出個線頭say Hi，較不直觀，但應用邏輯清楚。

提到Class和Struct的區別、初始化概念、Type Property and Method、Lazy var、Optional、Ternary Operators。

老師的教學很好，會先用比較簡單好理解的方式寫過，「恩恩沒錯就是這樣」，再用進階的短方法讓人感到「哇！」還有這招啊，如果看不懂會按暫停懷著受挫的心情想著「剛剛發生事ヾ(;ﾟ;Д;ﾟ;)ﾉﾞ」陷入沈默，「難道我過去的付出都是浮雲嗎！？為什麼第二堂課就跟不上了啊啊啊」

原先可能以為是湖泊，慢慢的會發現是一望無際的海洋。

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

Protocols和Closures，重量登場「碰～（效果音）」

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/protocols.jpg)

Protocols就像網紅，我們在接觸新領域時往往很快就能發現代表人物，雖然很快的能叫出名字，但是隨著揭露不同面向也會有更深層的體悟。在介紹完相關知識後，老師簡單的透過三張投影片帶出Delegation，還沒有實際放出來虐人，覺得溫馨。

可以看到Protocol裡並沒有實際描述函式的內容，就像教練下達戰術，細節球員自行發揮。什麼？你說這樣只出一張嘴不負責任，還讓你聯想到慘痛的經歷...拍拍(´;ω;`)ヾ(･∀･` )

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/Lecture-4.png)

課程繼續替專案的Card加上Hashable協定，讓它能被字典當鍵值使用。接著介紹characters和String的關係後，把塞在Array裡的表情符號改成String，從字串裡透過索引取值。讓學生感受Protocol-based design of the Foundation framework.

短短幾句背後深似海，帶出了Protocol和Swift語言緊密的關係，可以到[SwiftDoc.org](http://swiftdoc.org/v3.1/)感受感受。

就像平常騎摩托車會催油門就好，但真的解體來看原來是人類智慧浩瀚的結晶啊。

最後介紹幾乎無處不在的Closures，光看投影片有點抽象，不要緊、未來見面的機會很多～

相關好文章：[Swift中的閉包（Closure）](http://www.devtalking.com//articles/closure-expressions-in-swift/)、[Swift中的Protocol知道這些就夠了](http://www.jianshu.com/p/ee92fcbb3d21)、[可選接口和接口擴展](http://swifter.tips/objc-protocol/)。

嗯花了幾個月爬到的地方，CS193p第四堂進度就推到這裡了，想到有句話說「你以為的進步，只是別人的起點」。

有點惆悵(´ー`)。


## Lecture 5: Drawing

喜歡看影片配飯吃的朋友們，這堂只有最後20分鐘開Xcode寫程式，前面都在透過投影片講解概念，不會吃得手忙腳亂。

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/Lecture-5.jpg)

講解View的相關概念：View是矩形區域，可以想成空白的畫布；一個View只能有一個superview，但是可以有很多subviews或沒有。覺得文字抽象，可以想兄弟姐妹只會有一個媽媽，但是媽媽都要照顧他們。

帶出CGFloat、CGPoint、CGSize、CGRect畫圖的座標系概念。CG這兩個字解壓縮（？）後是[Core Graphics](https://developer.apple.com/documentation/coregraphics)，彼此是有關聯的。

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/bounds.jpg)

bounds和frame的差別。要注意View原點（0, 0）是在左上角，不是以前數學課本教的左下角、Y軸往下是正、往上是負。

綠色矩形View B，bounds是（（0, 0）, (200, 250)）座標原點在左上角，不會因為旋轉而改變，活在自己的世界中。

而View B's frame要包住這個綠色矩形，所以是圖中的白線區域（(140, 65), (320, 320)）；View B's center是看frame中心座標，X軸是140＋（320/2）= 300、Y軸是65＋(320/2) = 225。

View B's bounds和middle只看綠色矩形無關外在；View B's frame和center看包裹綠色矩形的白色矩形（雖然畫面只有兩根白線）。

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/bezierPath.jpg)

網友在iOS8做的相關筆記很詳細：[Custom Views視圖繪製](http://blog.csdn.net/cg1991130/article/details/45046431)、[Drawing繪製、UIColor顏色、Fonts字體](http://blog.csdn.net/cg1991130/article/details/45055797)。

接著說明貝茲曲線UIBezierPath()的作圖方式替下堂課暖身。


## Lecture 6: Multitouch

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/Lecture-6.jpg)

1.5小時的課我起碼用了5個小時（眼神死）

從頭到尾都在寫程式，建議預留兩倍以上的時間。因為其中有兩段老師為了節省時間直接貼預先準備好的程式碼，要按暫停自己把內容打在Xcode上；之後課程繼續，發現結果長的不同，我很克難的從影片各時間區間比對程式碼，反覆查找快2個小時才發現是錯在這邊(´_ゝ`)

因為老師是直接貼上，簡單帶過前後出現在畫面不到10秒吧。不過定位問題的經驗增加也是好事(≖＿≖)✧

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/playingCard.png)

前面1小時都在畫圖，後面教觸碰功能：滑動翻牌、放大、點擊蓋牌。分別對應UISwipeGestureRecognizer、UIPinchGestureRecognizer、UITapGestureRecognizer。

相關連結：[UIKit之UIFont](http://www.jianshu.com/p/2dd3e144d759)、[UIKit之UIView](http://www.jianshu.com/p/9cec015e6e11)、[CGRectInset的使用方法](http://www.jianshu.com/p/82a9d1ce8157)。


## Lecture 7: Multiple MVCs, Timer and Animation

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/Lecture-7.png)

加入更多MVC改進之前的遊戲，包含Navigation、SplitView(45分開始)、TabBar（51分開始），在iPad跟iPhone都有對應的體驗；因為時間關係並沒有講到動畫部分，算是較為輕鬆的主題，沒有太多寫程式的部分。

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/Lecture-7_2.png)

特別要注意的是每次Segue都會到一個重新創造的新頁面，返回的時間舊有的畫面也隨之消失。

比如第一次是A到B1，返回後B1隨之消失，第二次從A連過去出現的是新的B2，所以如果在B1有做更動，會發現第二次進去被還原重置了，因為出現的是B2。但是「Back」並不是Segue，所以沒有這個問題，可以想像成A是被壓在下面的卡片，B1、B2是蓋上去又被收走的卡片比較好懂。

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/Lecture-7_3.png)

轉場的膠水代碼，記得在Storyboard的identifier要命名。


## Lecture 8: Animation

講動畫、物理碰撞、Memory Cycle。

從Lecture 1到現在投影片最後的Demo code連結都無法點選使用，至少在上一季都會附上課堂的實作檔案；之前的問題不大，但這堂沒有起始專案有點難跟著上啊(›´ω`‹ )。


## Lecture 9: View Controller Lifecycle and Scroll View

前26分鐘說明Lifecycle，後面示範如何用Storyboard和程式碼使用Scroll View。

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/Lifecycle_0.png)

老師開頭就拉入一個VCLLoggingViewController檔案，執行後直接說明；因為這部分有印象，所以我回頭翻上一季Demo程式碼，配合螢幕上的最新內容修改，克難的完成了（好險）。在程式碼內我有註解哪邊是這次變更的。

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/Lifecycle_1.png)

在執行專案時，會印出Lifecycle的變動。可以看到在遊戲頁的Game（2）重新進入後是消失的，取而代之的是重置後的Game（3），而選擇主題的頁面從頭到尾都是ThemeChooser（1）沒有變動。

搭配投影片理解出現的順序。

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/Lifecycle_2.png)

iPad開始是橫向的，轉直後會看到第二大段的ThemeChooser進入到viewWillDisappear、以viewDidAppear收尾，因為直立時邊欄會自動縮起來。第三大段我手動把邊欄滑出來，所以會看到ThemeChooser執行viewWillAppear到viewDidAppear。

第四第五段，分別是往左滑讓邊欄消失、又往右滑讓邊欄出現。

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/ScrollView_1.png)

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/ScrollView_2.png)

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/ScrollView_3.png)

UIScrollView平常教學好像比較少看到，從1:00:14是示範透過Storyboard完成，記得在ImageView設定Intrinsic Size把Default改為Placeholder消除紅線警示；1:07:00開始是使用程式碼完成，按住option加滑鼠可以模擬兩指縮放。

圖片是我自己找的風景圖(　˙灬˙　)


## Lecture 10: Multithreading and Autolayout

前半部分講Multithreading，從48分開始說明Autolayout的Size Class功能。

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/multithreading_1.png)

關於UI的互動必須要在主線程執行，資料下載可以放到背景跑才不會讓畫面因為等待而凍結住。

可以搭配[Grand Central Dispatch (GCD) and Dispatch Queues in Swift 3](https://www.appcoda.com/grand-central-dispatch/)[(中文翻譯)](https://www.appcoda.com.tw/grand-central-dispatch/)、[Intro to Grand Central Dispatch in Swift 4 with Bob](https://blog.bobthedeveloper.io/intro-to-grand-central-dispatch-in-swift-3-with-bob-lee-1d4b56f731b3)閱讀，如果是第一次看到這些卡住是很正常的！

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/multithreading_2.png)

這節課重點就是截圖的這些程式碼了。

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/connect error_1.png)

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/connect error_2.png)

如果按照影片中的步驟操作，會撞到錯誤NSURLConnection finished with error - code -1022，因為圖片位置是http而不是https，要到plist允許放行，如上圖修復。

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/size classes.png)

![](https://github.com/hipala/Stanford-CS193p/blob/master/screenshot/rotation.gif)

Size Class的練習，讓直立是4X5、橫放是5X4，並在轉換時重新配置卡片位置。

因為直立時最下方那排橫放會消失，橫放轉直立最右邊那排會消失，如果沒有另外設定，那幾張點開的卡片在新畫面會不存在。啊，怎麼能被邊緣化呢，把手手牽起來～



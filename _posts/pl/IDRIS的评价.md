---
layout: post
title: IDRIS的评价
---

* content
{:toc}






正准备入坑, 刚读完 Tutorial, 来发表一下感想 :)

  

大体上看, **Idris 这个语言的设计, 基本上是Haskell的延续**, 整体上语法和Haskell十分接近, Haskell程序员用起来基本上只会更爽, 不太会有什么不适 (除了不是默认Lazy这一点需要适应之外).

  

所以简而言之, **Idris 就是带 Dependent Type 的 Haskell, 外加各种语法上的改良**, 解决了诸多由 Haskell 所遗留的问题, 是 Haskeller 心目中的理想语言.

  

说一些比较具体的点:

  

1\. **Dependent Type.** 就不细说了, 毕竟是 Haskeller 朝思暮想的特性, Haskell 加了各种扩展也只是部分支持, 还有各种遗留问题. 现在直接换 Idris 就可以丢掉包袱继续嗨皮了 (づ｡◕ᴗᴗ◕｡)づ

  

2. **Nat字面值** (不知道这个名字是不是合适, 有更好的名字请告知)**.** 将 0, 1, 2, 3 ... 和 Z, (S Z), (S (S Z)), (S (S (S Z))) ... 这两种表示在用户层面统一了, 这样用户不用操心应该用哪种表示了, 只管写, 编译器会给你选择适当的后端处理逻辑, 不用担心会因为写成了皮亚诺自然数就影响性能. 官方 Tutorial 上的介绍原文如下:

<img src="https://pic2.zhimg.com/v2-9b37a97fe122edb393d35e34495a5631\_b.png" data-rawwidth="807" data-rawheight="187" class="origin\_image zh-lightbox-thumb" width="807" data-original="https://pic2.zhimg.com/v2-9b37a97fe122edb393d35e34495a5631_r.jpg">

![](https://pic2.zhimg.com/80/v2-9b37a97fe122edb393d35e34495a5631_hd.png)

  

3\. **Holes 的语法支持**. 这样一来 "Holes Oriented Programming" 就不再是黑科技而变成官方支持了.

什么是 Holes ? 大概就是说留个坑后面再写, 然后让编译器帮你推断这个坑应该满足的约束这样子:

<img src="https://pic4.zhimg.com/v2-0ab4dbca2166a95a63a91cf192b0ad7b\_b.png" data-rawwidth="787" data-rawheight="151" class="origin\_image zh-lightbox-thumb" width="787" data-original="https://pic4.zhimg.com/v2-0ab4dbca2166a95a63a91cf192b0ad7b_r.jpg">

![](https://pic4.zhimg.com/80/v2-0ab4dbca2166a95a63a91cf192b0ad7b_hd.png)

为什么这东西有用呢? 官方解释是这样的:

<img src="https://pic2.zhimg.com/v2-170f065f3b1d04041377ddb77b227acd\_b.png" data-rawwidth="785" data-rawheight="107" class="origin\_image zh-lightbox-thumb" width="785" data-original="https://pic2.zhimg.com/v2-170f065f3b1d04041377ddb77b227acd_r.jpg">

![](https://pic2.zhimg.com/80/v2-170f065f3b1d04041377ddb77b227acd_hd.png)

虽然这种语法支持微不足道, 但是显示出的是百分百的贴心啊, 有木有 (๑>◡<๑)

  

4\. **Laziness 支持**. 虽然 Idris 默认是严格求值的, 但是我觉得这个 Laziness 方案的设计还是很到位的, 基本能弥补默认非 Lazy 的不爽. 虽然 Lazy 变成了 explicit 的了, 看起来相比与 Haskell 的默认 Lazy 是加重了程序员的心智负担, 但其实, **考虑到实际的工程应用代码中对程序求值策略的可控性的需求, 这种 explicit 其实是降低了用户控制求值策略的难度的** (不知道这样有没有说明白我的意思. 囧). 而且对于 Lazy 的控制, 只需要在类型签名里注明就好了, 实现代码的里可以无差别使用立即值和惰性值.

<img src="https://pic4.zhimg.com/v2-54788689e77f7e86f0c2dd62f0b2eb1f\_b.png" data-rawwidth="797" data-rawheight="321" class="origin\_image zh-lightbox-thumb" width="797" data-original="https://pic4.zhimg.com/v2-54788689e77f7e86f0c2dd62f0b2eb1f_r.jpg">

![](https://pic4.zhimg.com/80/v2-54788689e77f7e86f0c2dd62f0b2eb1f_hd.png)

  

5\. **Totality 检查**, 能确保某些代码是总能确定停机并返回期望类型的结果. 虽然可能很多人觉得这个特性在工程应用中意义不大, 但我觉得这个在关键应用场景还是有意义的, 另外 Idris 编译器也会使用这个检查结果.

<img src="https://pic3.zhimg.com/v2-9cebe5780104b6dc970a2385dd26fd3e\_b.png" data-rawwidth="801" data-rawheight="301" class="origin\_image zh-lightbox-thumb" width="801" data-original="https://pic3.zhimg.com/v2-9cebe5780104b6dc970a2385dd26fd3e_r.jpg">

![](https://pic3.zhimg.com/80/v2-9cebe5780104b6dc970a2385dd26fd3e_hd.png)

  

6\. **Constructor Name Overload**. 构造器名称可以被重载, 这个功能真的是太贴心了, 之前写 Haskell 总是觉得取名字难, 因为名字不能重复使用. 用 Idris 就完全没有这个问题啦, 聪明的她会自己通过类型推断来消歧, 还支持通过 Explicit Namespaces 来显式地消歧. (所以你惊喜地发现, fmap 已经消失了, 直接变成了 map, 如此等等)

<img src="https://pic3.zhimg.com/v2-87ce7442bfd14fa393168faf7f3343ba\_b.png" data-rawwidth="807" data-rawheight="217" class="origin\_image zh-lightbox-thumb" width="807" data-original="https://pic3.zhimg.com/v2-87ce7442bfd14fa393168faf7f3343ba_r.jpg">

![](https://pic3.zhimg.com/80/v2-87ce7442bfd14fa393168faf7f3343ba_hd.png)

  

7\. **!-notation** . 简而言之就是比 do 语法糖更甜的语法糖, 直接让你回到写 c 的体验, 但是记住此时你的代码逻辑的底层还是 Monad 这个抽象, 你的分号仍然是可编程的, 于是你完全没有了任何拒绝 Monad 的理由!

这个 !-notation大概这么用:

<img src="https://pic1.zhimg.com/v2-715d876f435f3e71769ee74b32b19f68\_b.png" data-rawwidth="787" data-rawheight="179" class="origin\_image zh-lightbox-thumb" width="787" data-original="https://pic1.zhimg.com/v2-715d876f435f3e71769ee74b32b19f68_r.jpg">

![](https://pic1.zhimg.com/80/v2-715d876f435f3e71769ee74b32b19f68_hd.png)

原理大概就是这样:

<img src="https://pic4.zhimg.com/v2-6b4c1f9060e482275b235689346d7873\_b.png" data-rawwidth="791" data-rawheight="411" class="origin\_image zh-lightbox-thumb" width="791" data-original="https://pic4.zhimg.com/v2-6b4c1f9060e482275b235689346d7873_r.jpg">

![](https://pic4.zhimg.com/80/v2-6b4c1f9060e482275b235689346d7873_hd.png)

  

8. **Monad Comprehensions.** 就是把 Haskell 中的 List Comprehension 扩展到了 Monad 上, 于是像 Maybe 这种类似容器的东西就也可以用类似 List Comprehension 的语法了.

<img src="https://pic2.zhimg.com/v2-52acc4e93fe2608d64a126a1c812eb11\_b.png" data-rawwidth="797" data-rawheight="137" class="origin\_image zh-lightbox-thumb" width="797" data-original="https://pic2.zhimg.com/v2-52acc4e93fe2608d64a126a1c812eb11_r.jpg">

![](https://pic2.zhimg.com/80/v2-52acc4e93fe2608d64a126a1c812eb11_hd.png)

  

9\. **Idiom Notation.** 就是 <*> 的语法糖, 终于不用再连着写一堆 <*\> 了. (鸡冻

<img src="https://pic4.zhimg.com/v2-f6011c2f4e149da57cf6e9387745b843\_b.png" data-rawwidth="799" data-rawheight="205" class="origin\_image zh-lightbox-thumb" width="799" data-original="https://pic4.zhimg.com/v2-f6011c2f4e149da57cf6e9387745b843_r.jpg">

![](https://pic4.zhimg.com/80/v2-f6011c2f4e149da57cf6e9387745b843_hd.png)

  

10\. **Named Implementations.** 就是说现在可以给 instance 取个名字了.

<img src="https://pic3.zhimg.com/v2-bb0ff37f9df0938a9a067e84ca3dafaa\_b.png" data-rawwidth="799" data-rawheight="321" class="origin\_image zh-lightbox-thumb" width="799" data-original="https://pic3.zhimg.com/v2-bb0ff37f9df0938a9a067e84ca3dafaa_r.jpg">

![](https://pic3.zhimg.com/80/v2-bb0ff37f9df0938a9a067e84ca3dafaa_hd.png)

这东东有什么用呢?

<img src="https://pic3.zhimg.com/v2-68efaf4e36e96c28700ca6bec6420726\_b.png" data-rawwidth="791" data-rawheight="199" class="origin\_image zh-lightbox-thumb" width="791" data-original="https://pic3.zhimg.com/v2-68efaf4e36e96c28700ca6bec6420726_r.jpg">

![](https://pic3.zhimg.com/80/v2-68efaf4e36e96c28700ca6bec6420726_hd.png)

看, 终于可以跟 Haskell 里 Sum 和 Product 这种莫名其妙的 datatype 说拜拜了...

  

(注意: 以上提到的只是 Idris 语言的部分特性, 且都是和 Haskell 作对比的, 所以和 Haskell 相似的部分并未提及

  

总得来说, Idris 击中了很多 Haskeller 隐忍了多年的痛点, 让 FP 实践变得更舒服了. 可以注意到 **Idris 所有语言层面的设计, 在保持理论上的先进的同时, 还不忘立足于解决实践中遇到的问题.** 所有计算机领域的从业者应该都能感受到这一点的难能可贵.

  

如果说 Haskell 是 Pure FP 编程语言的探索者和先驱的话, 那么 Idris 就是这个领域的集大成者. **Idris 是 FP 社区对于多年 Pure FP 实践的总结和归纳**. **同时它更是将Dependent Type应用于工程实践的探索者和先驱.** 我完全可以想象现在的这点星星之火将在未来的几十年里发出多么璀璨耀眼的光芒!

  

\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\- 2017/04/17 更新 ------------------------------

  

没想到一个这么冷门的话题 (目前知乎 Idris 话题的关注者只有59) , 竟然引来这么多赞 (此处应感谢B大), 感觉这个坑还是要补一下... 毕竟之前没有认真回答题主的问题 (捂脸

  

现阶段而言, 这个语言最大的问题在于不成熟. 这点在官方FAQ里已经写得很清楚了.

<img src="https://pic3.zhimg.com/v2-38f219027eb3888fc08285d84b117bbe\_b.png" data-rawwidth="809" data-rawheight="301" class="origin\_image zh-lightbox-thumb" width="809" data-original="https://pic3.zhimg.com/v2-38f219027eb3888fc08285d84b117bbe_r.jpg">

![](https://pic3.zhimg.com/80/v2-38f219027eb3888fc08285d84b117bbe_hd.png)

  

什么叫不成熟呢?

  

一方面是语言本身, 可以看到目前为止github上还有400多个issue没有解决.

<img src="https://pic1.zhimg.com/v2-0c1f21ff9dae751b226107336042a8e8\_b.png" data-rawwidth="467" data-rawheight="101" class="origin\_image zh-lightbox-thumb" width="467" data-original="https://pic1.zhimg.com/v2-0c1f21ff9dae751b226107336042a8e8_r.jpg">

![](https://pic1.zhimg.com/80/v2-0c1f21ff9dae751b226107336042a8e8_hd.png)

  

另一方面就是周边的生态, 比如说parser库, 官方wiki ([idris-lang/Idris-dev](https://link.zhihu.com/?target=https%3A//github.com/idris-lang/Idris-dev/wiki/Libraries)) 上列了4个, 其中3个都不可用了... (捂脸

  

再有就是后端生成的代码执行效率上, 由于缺少 Haskell 这么多年的打磨, 性能能不能拼过 Haskell ?

  

以上这些都是现阶段的问题.

  

然后说到社区的话, 基本上可以说社区成员是 Haskell 社区的子集 (这个暂时没有数据支持, 只是个人感觉, 有时间的话可以后面搞一个数据分析...).

  

下面是各个网站上的基本情况:

  

Github:

<img src="https://pic1.zhimg.com/v2-16be8af763c1165c04b1118393906e98\_b.png" data-rawwidth="1243" data-rawheight="107" class="origin\_image zh-lightbox-thumb" width="1243" data-original="https://pic1.zhimg.com/v2-16be8af763c1165c04b1118393906e98_r.jpg">

![](https://pic1.zhimg.com/80/v2-16be8af763c1165c04b1118393906e98_hd.png)

  

<img src="https://pic1.zhimg.com/v2-764aa022b6c27f25d8c5f591ed69294c\_b.png" data-rawwidth="201" data-rawheight="39" class="content\_image" width="201">

![](https://pic1.zhimg.com/80/v2-764aa022b6c27f25d8c5f591ed69294c_hd.png)

  

Stackoverflow:

<img src="https://pic2.zhimg.com/v2-38f7e9a1c3d35b971cd956ff0961a8ed\_b.png" data-rawwidth="321" data-rawheight="153" class="content\_image" width="321">

![](https://pic2.zhimg.com/80/v2-38f7e9a1c3d35b971cd956ff0961a8ed_hd.png)

  

Reddit

<img src="https://pic4.zhimg.com/v2-c6e10bd4bdc9813ed6d38b847abf448b\_b.png" data-rawwidth="271" data-rawheight="73" class="content\_image" width="271">

![](https://pic4.zhimg.com/80/v2-c6e10bd4bdc9813ed6d38b847abf448b_hd.png)

  

作为对比, 放一下 Haskell 的情况:

  

Github:

<img src="https://pic1.zhimg.com/v2-20b93e388c1642019231706266fda334\_b.png" data-rawwidth="1239" data-rawheight="55" class="origin\_image zh-lightbox-thumb" width="1239" data-original="https://pic1.zhimg.com/v2-20b93e388c1642019231706266fda334_r.jpg">

![](https://pic1.zhimg.com/80/v2-20b93e388c1642019231706266fda334_hd.png)

  

Stackoverflow:

<img src="https://pic1.zhimg.com/v2-139d40eda2255d6a0cf93a11f98e09b0\_b.png" data-rawwidth="347" data-rawheight="141" class="content\_image" width="347">

![](https://pic1.zhimg.com/80/v2-139d40eda2255d6a0cf93a11f98e09b0_hd.png)

  

Reddit:

<img src="https://pic3.zhimg.com/v2-93733fb300eea8f08aab43d79aefd8e2\_b.png" data-rawwidth="231" data-rawheight="53" class="content\_image" width="231">

![](https://pic3.zhimg.com/80/v2-93733fb300eea8f08aab43d79aefd8e2_hd.png)

  

额, 毕竟GHC只是mirror到Github上的, 所以这个对比可能意义不大...

  

总之, 作为一个 "学完找不到工作" 的语言, 能建立一个这样规模的社区, 我觉得还是很了不起的... (作为对比, 可以参考垠神的yin语言, ((逃...

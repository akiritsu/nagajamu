---
layout: post
title: Markdown技巧
---

* content
{:toc}



自从几年前开始在 GitHub 玩耍，接触到 Markdown 之后，就一发不可收拾，在各种文档编辑上，有条件用 Markdown 的尽量用，不能用的创造条件也要用——README、博客、公众号、接口文档等等全都是，比如当前这篇文章就是用 Markdown 编辑而成。

这几年也发现越来越多的网站和程序提供了对 Markdown 的支持，从最初接触的 GitHub、Jekyll，到简书、掘金、CSDN 等等，由此也从别人做得好的文档中，学到了一些『奇技淫巧』，所以本文不是对 Markdown 基础语法的介绍，而是一些相对高级、能将 Markdown 玩出更多花样的小技巧。

_注：如下技巧大多是利用 Markdown 兼容部分 HTML 标签的特性来完成，不一定在所有网站和软件里都完全支持，主要以 GitHub 支持为准。_

在表格单元格里换行
---------

借助于 HTML 里的 <br /> 实现。

示例代码：

    | Header1 | Header2                          |
    |---------|----------------------------------|
    | item 1  | 1. one<br />2. two<br />3. three |
    

示例效果：

<img src="https://pic3.zhimg.com/v2-0a21252bba9e5310d95fa97c2ddcea52\_b.jpg" data-rawwidth="1418" data-rawheight="268" class="origin\_image zh-lightbox-thumb" width="1418" data-original="https://pic3.zhimg.com/v2-0a21252bba9e5310d95fa97c2ddcea52_r.jpg">

![](https://pic3.zhimg.com/80/v2-0a21252bba9e5310d95fa97c2ddcea52_hd.jpg)

图文混排
----

使用 <img> 标签来贴图，然后指定 align 属性。

示例代码：

    <img align="right" src="https://raw.githubusercontent.com/mzlogin/mzlogin.github.io/master/images/posts/markdown/demo.png"/>
    
    这是一个示例图片。
    
    图片显示在 N 段文字的右边。
    
    N 与图片高度有关。
    
    刷屏行。
    
    刷屏行。
    
    到这里应该不会受影响了，本行应该延伸到了图片的正下方，所以我要足够长才能确保不同的屏幕下都看到效果。
    

示例效果：

<img src="https://pic2.zhimg.com/v2-e4236eb9cdfb444c177cf82d4e0eed12\_b.jpg" data-rawwidth="1798" data-rawheight="458" class="origin\_image zh-lightbox-thumb" width="1798" data-original="https://pic2.zhimg.com/v2-e4236eb9cdfb444c177cf82d4e0eed12_r.jpg">

控制图片大小和位置
---------

标准的 Markdown 图片标记 !\[\]() 无法指定图片的大小和位置，只能依赖默认的图片大小，默认居左。

而有时候源图太大想要缩小一点，或者想将图片居中，就仍需要借助 HTML 的标签来实现了。图片居中可以使用 <div> 标签加 align 属性来控制，图片宽高则用 width 和 height 来控制。

示例代码：

    **图片默认显示效果：**
    
    ![](https://raw.githubusercontent.com/mzlogin/mzlogin.github.io/master/images/posts/markdown/demo.png)
    
    **加以控制后的效果：**
    
    <div align="center"><img width="65" height="75" src="https://raw.githubusercontent.com/mzlogin/mzlogin.github.io/master/images/posts/markdown/demo.png"/></div>
    

示例效果：

<img src="https://pic3.zhimg.com/v2-e94abe49725096aee393c50f4575f6da\_b.jpg" data-rawwidth="1794" data-rawheight="686" class="origin\_image zh-lightbox-thumb" width="1794" data-original="https://pic3.zhimg.com/v2-e94abe49725096aee393c50f4575f6da_r.jpg">

格式化表格
-----

表格在渲染之后很整洁好看，但是在文件源码里却可能是这样的：

    |Header1|Header2|
    |---|---|
    |a|a|
    |ab|ab|
    |abc|abc|
    

不知道你能不能忍，反正我是不能忍。

好在广大网友们的智慧是无穷的，在各种编辑器里为 Markdown 提供了表格格式化功能，比如我使用 Vim 编辑器，就有 [vim-table-mode](https://link.zhihu.com/?target=https%3A//github.com/dhruvasagar/vim-table-mode) 插件，它能帮我自动将表格格式化成这样：

    | Header1 | Header2 |
    |---------|---------|
    | a       | a       |
    | ab      | ab      |
    | abc     | abc     |
    

是不是看着舒服多了？

如果你不使用 Vim，也没有关系，比如 Atom 编辑器的 [markdown-table-formatter](https://link.zhihu.com/?target=https%3A//atom.io/packages/markdown-table-formatter) 插件，Sublime Text 3 的 [MarkdownTableFormatter](https://link.zhihu.com/?target=https%3A//github.com/bitwiser73/MarkdownTableFormatter) 等等，都提供了类似的解决方案。

使用 Emoji
--------

这个是 GitHub 对标准 Markdown 标记之外的扩展了，用得好能让文字生动一些。

示例代码：

    我和我的小伙伴们都笑了。:smile:
    

示例效果：

我和我的小伙伴们都笑了。😄

更多可用 Emoji 代码参见 [https://www.webpagefx.com/tools/emoji-cheat-sheet/](https://link.zhihu.com/?target=https%3A//www.webpagefx.com/tools/emoji-cheat-sheet/)。

行首缩进
----

直接在 Markdown 里用空格和 Tab 键缩进在渲染后会被忽略掉，需要借助 HTML 转义字符在行首添加空格来实现，&ensp;代表半角空格，&emsp; 代表全角空格。

示例代码：

    &emsp;&emsp;春天来了，又到了万物复苏的季节。
    

示例效果：

　　春天来了，又到了万物复苏的季节。

展示数学公式
------

如果是在 GitHub Pages，可以参考 [http://wanguolin.github.io/mathmatics_rending/](https://link.zhihu.com/?target=http%3A//wanguolin.github.io/mathmatics_rending/) 使用 MathJax 来优雅地展示数学公式（非图片）。

如果是在 GitHub 项目的 README 等地方，目前我能找到的方案只能是贴图了，以下是一种比较方便的贴图方案：

1.  在 [https://www.codecogs.com/latex/eqneditor.php](https://link.zhihu.com/?target=https%3A//www.codecogs.com/latex/eqneditor.php) 网页上部的输入框里输入 LaTeX 公式，比如 $$x=\\frac{-b\\pm\\sqrt{b^2-4ac}}{2a}$$；
2.  在网页下部拷贝 URL Encoded 的内容，比如以上公式生成的是 [https://latex.codecogs.com/png.latex?%24%24x%3D%5Cfrac%7B-b%5Cpm%5Csqrt%7Bb%5E2-4ac%7D%7D%7B2a%7D%24%24](https://link.zhihu.com/?target=https%3A//latex.codecogs.com/png.latex%3F%2524%2524x%253D%255Cfrac%257B-b%255Cpm%255Csqrt%257Bb%255E2-4ac%257D%257D%257B2a%257D%2524%2524)；

<img src="https://pic1.zhimg.com/v2-aefc8c156367d88b0568c9f738fb6b75\_b.jpg" data-rawwidth="1164" data-rawheight="1080" class="origin\_image zh-lightbox-thumb" width="1164" data-original="https://pic1.zhimg.com/v2-aefc8c156367d88b0568c9f738fb6b75_r.jpg">

3\. 在文档需要的地方使用以上 URL 贴图，比如

    ![](https://latex.codecogs.com/png.latex?%24%24x%3D%5Cfrac%7B-b%5Cpm%5Csqrt%7Bb%5E2-4ac%7D%7D%7B2a%7D%24%24)
    

示例效果：

<img src="https://pic1.zhimg.com/v2-8b3f0d9cbb4d6f33491f0c54a57a9ed2\_b.jpg" data-rawwidth="160" data-rawheight="41" class="content\_image" width="160">

任务列表
----

在 GitHub 和 GitLab 等网站，除了可以使用有序列表和无序列表外，还可以使用任务列表，很适合要列出一些清单的场景。

示例代码：

示例效果：

<img src="https://pic3.zhimg.com/v2-07785edfeb485fb95e4eb4d828ca90a3\_b.jpg" data-rawwidth="1752" data-rawheight="366" class="origin\_image zh-lightbox-thumb" width="1752" data-original="https://pic3.zhimg.com/v2-07785edfeb485fb95e4eb4d828ca90a3_r.jpg">

自动维护目录
------

有时候维护一份比较长的文档，希望能够自动根据文档中的标题生成目录（Table of Contents），并且当标题有变化时自动更新目录，能减轻工作量，也不易出错。

如果你使用 Vim 编辑器，那可以使用我维护的插件 [vim-markdown-toc](https://link.zhihu.com/?target=https%3A//github.com/mzlogin/vim-markdown-toc) 来帮你完美地解决此事：

<img src="https://pic2.zhimg.com/v2-f9df9aaf9834348f4efd57650e3094d0\_b.gif" data-rawwidth="659" data-rawheight="509" data-thumbnail="https://pic2.zhimg.com/v2-f9df9aaf9834348f4efd57650e3094d0\_b.jpg" class="origin\_image zh-lightbox-thumb" width="659" data-original="https://pic2.zhimg.com/v2-f9df9aaf9834348f4efd57650e3094d0\_r.jpg">

![](https://pic2.zhimg.com/v2-f9df9aaf9834348f4efd57650e3094d0_b.jpg)

插件地址：[https://github.com/mzlogin/vim-markdown-toc](https://link.zhihu.com/?target=https%3A//github.com/mzlogin/vim-markdown-toc)

如果你使用其它编辑器，一般也能找到对应的解决方案，比如 Atom 编辑器的 [markdown-toc](https://link.zhihu.com/?target=https%3A//atom.io/packages/markdown-toc) 插件，Sublime Text 的 [MarkdownTOC](https://link.zhihu.com/?target=https%3A//packagecontrol.io/packages/MarkdownTOC) 插件等。

后话
--

好了，这一波的奇技淫巧就此告一段落，希望大家在了解这些之后能有所收获，更好地排版，专注写作。

如果你觉得本文对你有帮助，欢迎关注我的微信公众号 isprogrammer，获取更多有帮助的内容。

参考
--

*   [https://raw.githubusercontent.com/matiassingers/awesome-readme/master/readme.md](https://link.zhihu.com/?target=https%3A//raw.githubusercontent.com/matiassingers/awesome-readme/master/readme.md)
*   [https://www.zybuluo.com/songpfei/note/247346](https://link.zhihu.com/?target=https%3A//www.zybuluo.com/songpfei/note/247346)

  

* * *

原始链接：[关于 Markdown 的一些奇技淫巧](https://link.zhihu.com/?target=https%3A//mp.weixin.qq.com/s%3F__biz%3DMzIwMDA3ODQzNA%3D%3D%26mid%3D2459863129%26idx%3D1%26sn%3Db76e9c7ff21cef560001067ede778085%26chksm%3D81e88d54b69f04420cc7ea9bf82615d7c8f7db09074519845e6c77b59a47d5bab9ee3768a3f6%26scene%3D0%23rd)

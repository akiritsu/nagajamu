---
layout: post
title: Basics of Linux Operating Systems
category: OS
tags: OS Linux
date: 2013-3-1
---


* content
{:toc}

## Linux操作系统基础

> 学习Linux之前，我们先来简单的认识一下操作系统。

一 从认识操作系统开始


1.1 操作系统简介


我通过以下四点介绍什么操作系统：

*   **操作系统（Operation System，简称OS）是管理计算机硬件与软件资源的程序，是计算机系统的内核与基石；**
*   **操作系统本质上是运行在计算机上的软件程序 ；**
*   **为用户提供一个与系统交互的操作界面 ；**
*   **操作系统分内核与外壳（我们可以把外壳理解成围绕着内核的应用程序，而内核就是能操作硬件的程序）。**

  

<img src="https://pic1.zhimg.com/v2-7bbfb78bf95503006b547e81ba107470\_b.jpg" data-caption="" data-size="normal" data-rawwidth="862" data-rawheight="637" class="origin\_image zh-lightbox-thumb" width="862" data-original="https://pic1.zhimg.com/v2-7bbfb78bf95503006b547e81ba107470_r.jpg">

![](https://pic1.zhimg.com/80/v2-7bbfb78bf95503006b547e81ba107470_hd.jpg)

  

1.2 操作系统简单分类


1.  **Windows:** 目前最流行的个人桌面操作系统 ，不做多的介绍，大家都清楚。
2.  **Unix：** 最早的多用户、多任务操作系统 .按照操作系统的分类，属于分时操作系统。Unix 大多被用在服务器、工作站，现在也有用在个人计算机上。它在创建互联网、计算机网络或客户端/服务器模型方面发挥着非常重要的作用。

<img src="https://pic3.zhimg.com/v2-6450b608209e9b542cb738bd140acae2\_b.jpg" data-caption="" data-size="normal" data-rawwidth="1075" data-rawheight="475" class="origin\_image zh-lightbox-thumb" width="1075" data-original="https://pic3.zhimg.com/v2-6450b608209e9b542cb738bd140acae2_r.jpg">

![](https://pic3.zhimg.com/80/v2-6450b608209e9b542cb738bd140acae2_hd.jpg)

  

1.  **Linux:** Linux是一套免费使用和自由传播的类Unix操作系统.Linux存在着许多不同的Linux版本，但它们都使用了 **Linux内核** 。Linux可安装在各种计算机硬件设备中，比如手机、平板电脑、路由器、视频游戏控制台、台式计算机、大型机和超级计算机。严格来讲，Linux这个词本身只表示Linux内核，但实际上人们已经习惯了用Linux来形容整个基于Linux内核，并且使用GNU 工程各种工具和数据库的操作系统。

  

<img src="https://pic3.zhimg.com/v2-8d87fed36fa7493632a3943b1e5657de\_b.jpg" data-caption="" data-size="normal" data-rawwidth="426" data-rawheight="240" class="origin\_image zh-lightbox-thumb" width="426" data-original="https://pic3.zhimg.com/v2-8d87fed36fa7493632a3943b1e5657de_r.jpg">

![](https://pic3.zhimg.com/80/v2-8d87fed36fa7493632a3943b1e5657de_hd.jpg)

  

二 初探Linux


2.1 Linux简介


我们上面已经介绍到了Linux，我们这里只强调三点。

*   **类Unix系统：** Linux是一种自由、开放源码的类似Unix的操作系统
*   **Linux内核：** 严格来说，Linux这个词本身只表示Linux内核
*   **Linux之父：** 一个编程领域的传奇式人物。他是Linux内核的最早作者，随后发起了这个开源项目，担任Linux内核的首要架构师与项目协调者，是当今世界最著名的电脑程序员、黑客之一。他还发起了Git这个开源项目，并为主要的开发者。

  

<img src="https://pic2.zhimg.com/v2-f781b1749198f8143d200dc6188f878d\_b.jpg" data-caption="" data-size="normal" data-rawwidth="270" data-rawheight="376" class="content\_image" width="270">

![](https://pic2.zhimg.com/80/v2-f781b1749198f8143d200dc6188f878d_hd.jpg)

  

2.2 Linux诞生简介


*   1991年，芬兰的业余计算机爱好者Linus Torvalds编写了一款类似Minix的系统（基于微内核架构的类Unix操作系统）被ftp管理员命名为Linux 加入到自由软件基金的GNU计划中;
*   Linux以一只可爱的企鹅作为标志，象征着敢作敢为、热爱生活。

2.3 Linux的分类


**Linux根据原生程度，分为两种：**

1.  **内核版本：** Linux不是一个操作系统，严格来讲，Linux只是一个操作系统中的内核。内核是什么？内核建立了计算机软件与硬件之间通讯的平台，内核提供系统服务，比如文件管理、虚拟内存、设备I/O等；
2.  **发行版本：** 一些组织或公司在内核版基础上进行二次开发而重新发行的版本。Linux发行版本有很多种（ubuntu和CentOS用的都很多，初学建议选择CentOS），如下图所示：

<img src="https://pic4.zhimg.com/v2-f03d64b76260390817cf4c6d800357cf\_b.jpg" data-caption="" data-size="normal" data-rawwidth="548" data-rawheight="274" class="origin\_image zh-lightbox-thumb" width="548" data-original="https://pic4.zhimg.com/v2-f03d64b76260390817cf4c6d800357cf_r.jpg">

![](https://pic4.zhimg.com/80/v2-f03d64b76260390817cf4c6d800357cf_hd.jpg)

  

三 Linux文件系统概览


3.1 Linux文件系统简介


**在Linux操作系统中，所有被操作系统管理的资源，例如网络接口卡、磁盘驱动器、打印机、输入输出设备、普通文件或是目录都被看作是一个文件。**

也就是说在LINUX系统中有一个重要的概念：**一切都是文件**。其实这是UNIX哲学的一个体现，而Linux是重写UNIX而来，所以这个概念也就传承了下来。在UNIX系统中，把一切资源都看作是文件，包括硬件设备。UNIX系统把每个硬件都看成是一个文件，通常称为设备文件，这样用户就可以用读写文件的方式实现对硬件的访问。

3.2 文件类型与目录结构


**Linux支持5种文件类型 ：**

<img src="https://pic3.zhimg.com/v2-b8c362f55bf1e043c9e58df57d153832\_b.jpg" data-caption="" data-size="normal" data-rawwidth="901" data-rawheight="547" class="origin\_image zh-lightbox-thumb" width="901" data-original="https://pic3.zhimg.com/v2-b8c362f55bf1e043c9e58df57d153832_r.jpg">

![](https://pic3.zhimg.com/80/v2-b8c362f55bf1e043c9e58df57d153832_hd.jpg)

  

**Linux的目录结构如下：**

Linux文件系统的结构层次鲜明，就像一棵倒立的树，最顶层是其根目录：

<img src="https://pic3.zhimg.com/v2-493bb7eda7e279cf06a77f3300f79ba2\_b.jpg" data-caption="" data-size="normal" data-rawwidth="823" data-rawheight="315" class="origin\_image zh-lightbox-thumb" width="823" data-original="https://pic3.zhimg.com/v2-493bb7eda7e279cf06a77f3300f79ba2_r.jpg">

![](https://pic3.zhimg.com/80/v2-493bb7eda7e279cf06a77f3300f79ba2_hd.jpg)

  

**常见目录说明：**

*   **/bin：** 存放二进制可执行文件(ls,cat,mkdir等)，常用命令一般都在这里；
*   **/etc：** 存放系统管理和配置文件；
*   **/home：** 存放所有用户文件的根目录，是用户主目录的基点，比如用户user的主目录就是/home/user，可以用~user表示；
*   **/usr ：** 用于存放系统应用程序；
*   **/opt：** 额外安装的可选应用程序包所放置的位置。一般情况下，我们可以把tomcat等都安装到这里；
*   **/proc：** 虚拟文件系统目录，是系统内存的映射。可直接访问这个目录来获取系统信息；
*   **/root：** 超级用户（系统管理员）的主目录（特权阶级^o^）；
*   **/sbin:** 存放二进制可执行文件，只有root才能访问。这里存放的是系统管理员使用的系统级别的管理命令和程序。如ifconfig等；
*   **/dev：** 用于存放设备文件；
*   **/mnt：** 系统管理员安装临时文件系统的安装点，系统提供这个目录是让用户临时挂载其他的文件系统；
*   **/boot：** 存放用于系统引导时使用的各种文件；
*   **/lib ：** 存放着和系统运行相关的库文件 ；
*   **/tmp：** 用于存放各种临时文件，是公用的临时文件存储点；
*   **/var：** 用于存放运行时需要改变数据的文件，也是某些大文件的溢出区，比方说各种服务的日志文件（系统启动日志等。）等；
*   **/lost+found：** 这个目录平时是空的，系统非正常关机而留下“无家可归”的文件（windows下叫什么.chk）就在这里。

四 Linux基本命令


下面只是给出了一些比较常用的命令。推荐一个Linux命令快查网站，非常不错，大家如果遗忘某些命令或者对某些命令不理解都可以在这里得到解决。

Linux命令大全：[http://man.linuxde.net/](http://link.zhihu.com/?target=http%3A//man.linuxde.net/)

4.1 目录切换命令


*   **`cd usr`：** 切换到该目录下usr目录
*   **`cd..（或cd../）`：** 切换到上一层目录
*   **`cd/`：** 切换到系统根目录
*   **`cd~`：** 切换到用户主目录
*   **`cd-`：** 切换到上一个所在目录

4.2 目录的操作命令（增删改查）


1.  **`mkdir目录名称`：** 增加目录
2.  **`ls或者ll`**（ll是ls -l的缩写，ll命令以看到该目录下的所有目录和文件的详细信息）：查看目录信息
3.  **`find目录参数`：** 寻找目录（查）  
    示例：  
    

*   列出当前目录及子目录下所有文件和文件夹: `find.`
*   在 `/home`目录下查找以.txt结尾的文件名: `find/home-name"*.txt"`
*   同上，但忽略大小写: `find/home-iname"*.txt"`
*   当前目录及子目录下查找所有以.txt和.pdf结尾的文件: `find.\(-name"*.txt"-o-name"*.pdf"\)`或 `find.-name"*.txt"-o-name"*.pdf"`

  

1.  **`mv目录名称新目录名称`：** 修改目录的名称（改）  
    注意：mv的语法不仅可以对目录进行重命名而且也可以对各种文件，压缩包等进行 重命名的操作。mv命令用来对文件或目录重新命名，或者将文件从一个目录移到另一个目录中。后面会介绍到mv命令的另一个用法。
2.  **`mv目录名称目录的新位置`：** 移动目录的位置剪切（改）  
    注意：mv语法不仅可以对目录进行剪切操作，对文件和压缩包等都可执行剪切操作。另外mv与cp的结果不同，mv好像文件“搬家”，文件个数并未增加。而cp对文件进行复制，文件个数增加了。
3.  **`cp-r目录名称目录拷贝的目标位置`：** 拷贝目录（改），-r代表递归拷贝  
    注意：cp命令不仅可以拷贝目录还可以拷贝文件，压缩包等，拷贝文件和压缩包时不 用写-r递归
4.  **`rm[-rf]目录`:** 删除目录（删）  
    注意：rm不仅可以删除目录，也可以删除其他文件或压缩包，为了增强大家的记忆， 无论删除任何目录或文件，都直接使用 `rm-rf` 目录/文件/压缩包

4.3 文件的操作命令（增删改查）


1.  **`touch文件名称`:** 文件的创建（增）
2.  **`cat/more/less/tail文件名称`** 文件的查看（查）  
    

*   **`cat`：** 只能显示最后一屏内容
*   **`more`：** 可以显示百分比，回车可以向下一行， 空格可以向下一页，q可以退出查看
*   **`less`：** 可以使用键盘上的PgUp和PgDn向上 和向下翻页，q结束查看
*   **`tail-10`** **：** 查看文件的后10行，Ctrl+C结束

注意：命令 tail -f 文件 可以对某个文件进行动态监控，例如tomcat的日志文件， 会随着程序的运行，日志会变化，可以使用tail -f catalina-2016-11-11.log 监控 文 件的变化

1.  **`vim文件`：** 修改文件的内容（改）  
    vim编辑器是Linux中的强大组件，是vi编辑器的加强版，vim编辑器的命令和快捷方式有很多，但此处不一一阐述，大家也无需研究的很透彻，使用vim编辑修改文件的方式基本会使用就可以了。  
    **在实际开发中，使用vim编辑器主要作用就是修改配置文件，下面是一般步骤：**  
    vim 文件>进入文件>命令模式>按i进入编辑模式>编辑文件 >按Esc进入底行模式>输入:wq/q! （输入wq代表写入内容并退出，即保存；输入q!代表强制退出不保存。）
2.  **`rm-rf文件`：** 删除文件（删）  
    同目录删除：熟记 `rm-rf` 文件 即可

4.4 压缩文件的操作命令


**1）打包并压缩文件：**

Linux中的打包文件一般是以.tar结尾的，压缩的命令一般是以.gz结尾的。

而一般情况下打包和压缩是一起进行的，打包并压缩后的文件的后缀名一般.tar.gz。  
命令： **`tar-zcvf打包压缩后的文件名要打包压缩的文件`**其中：

z：调用gzip压缩命令进行压缩

c：打包文件

v：显示运行过程

f：指定文件名

比如：加入test目录下有三个文件分别是 :aaa.txt bbb.txt ccc.txt,如果我们要打包test目录并指定压缩后的压缩包名称为test.tar.gz可以使用命令： **`tar-zcvf test.tar.gz aaa.txt bbb.txt ccc.txt`或： `tar-zcvf test.tar.gz/test/`**

**2）解压压缩包：**

命令：tar \[-xvf\] 压缩文件

其中：x：代表解压

示例：

1 将/test下的test.tar.gz解压到当前目录下可以使用命令： **`tar-xvf test.tar.gz`**

2 将/test下的test.tar.gz解压到根目录/usr下: **`tar-xvf xxx.tar.gz-C/usr`**（\- C代表指定解压的位置）

4.5 Linux的权限命令


操作系统中每个文件都拥有特定的权限、所属用户和所属组。权限是操作系统用来限制资源访问的机制，在Linux中权限一般分为读(readable)、写(writable)和执行(excutable)，分为三组。分别对应文件的属主(owner)，属组(group)和其他用户(other)，通过这样的机制来限制哪些用户、哪些组可以对特定的文件进行什么样的操作。通过 **`ls-l`** 命令我们可以 查看某个目录下的文件或目录的权限

示例：在随意某个目录下 `ls-l`

  

<img src="https://pic3.zhimg.com/v2-51fe6576bc5880b07a3f15eda7764dc6\_b.jpg" data-caption="" data-size="normal" data-rawwidth="589" data-rawheight="228" class="origin\_image zh-lightbox-thumb" width="589" data-original="https://pic3.zhimg.com/v2-51fe6576bc5880b07a3f15eda7764dc6_r.jpg">

![](https://pic3.zhimg.com/80/v2-51fe6576bc5880b07a3f15eda7764dc6_hd.jpg)

  

第一列的内容的信息解释如下：

  

<img src="https://pic3.zhimg.com/v2-2b5d3de75d3cd2558a671f6843efece6\_b.jpg" data-caption="" data-size="normal" data-rawwidth="489" data-rawheight="209" class="origin\_image zh-lightbox-thumb" width="489" data-original="https://pic3.zhimg.com/v2-2b5d3de75d3cd2558a671f6843efece6_r.jpg">

![](https://pic3.zhimg.com/80/v2-2b5d3de75d3cd2558a671f6843efece6_hd.jpg)

  

> 下面将详细讲解文件的类型、Linux中权限以及文件有所有者、所在组、其它组具体是什么？

**文件的类型：**

*   d： 代表目录
*   -： 代表文件
*   l： 代表链接（可以认为是window中的快捷方式）

**Linux中权限分为以下几种：**

*   r：代表权限是可读，r也可以用数字4表示
*   w：代表权限是可写，w也可以用数字2表示
*   x：代表权限是可执行，x也可以用数字1表示

**文件和目录权限的区别：**

对文件和目录而言，读写执行表示不同的意义。

对于文件：

**权限名称可执行操作**r可以使用cat查看文件的内容w可以修改文件的内容x可以将其运行为二进制文件

对于目录：

**权限名称可执行操作**r可以查看目录下列表w可以创建和删除目录下文件x可以使用cd进入目录

**在linux中的每个用户必须属于一个组，不能独立于组外。在linux中每个文件有所有者、所在组、其它组的概念。**

*   **所有者**  
    一般为文件的创建者，谁创建了该文件，就天然的成为该文件的所有者，用ls ‐ahl命令可以看到文件的所有者 也可以使用chown 用户名 文件名来修改文件的所有者 。
*   **文件所在组**  
    当某个用户创建了一个文件后，这个文件的所在组就是该用户所在的组 用ls ‐ahl命令可以看到文件的所有组 也可以使用chgrp 组名 文件名来修改文件所在的组。
*   **其它组**  
    除开文件的所有者和所在组的用户外，系统的其它用户都是文件的其它组

> 我们再来看看如何修改文件/目录的权限。

**修改文件/目录的权限的命令： `chmod`**

示例：修改/test下的aaa.txt的权限为属主有全部权限，属主所在的组有读写权限，  
其他用户只有读的权限

**`chmod u=rwx,g=rw,o=r aaa.txt`**

  

<img src="https://pic1.zhimg.com/v2-0a9c9d010b6cff9f5bd09e994dee4e1c\_b.jpg" data-caption="" data-size="normal" data-rawwidth="525" data-rawheight="246" class="origin\_image zh-lightbox-thumb" width="525" data-original="https://pic1.zhimg.com/v2-0a9c9d010b6cff9f5bd09e994dee4e1c_r.jpg">

![](https://pic1.zhimg.com/80/v2-0a9c9d010b6cff9f5bd09e994dee4e1c_hd.jpg)

  

上述示例还可以使用数字表示：

chmod 764 aaa.txt

**补充一个比较常用的东西:**

假如我们装了一个zookeeper，我们每次开机到要求其自动启动该怎么办？

1.  新建一个脚本zookeeper
2.  为新建的脚本zookeeper添加可执行权限，命令是: `chmod+x zookeeper`
3.  把zookeeper这个脚本添加到开机启动项里面，命令是： `chkconfigadd zookeeper`
4.  如果想看看是否添加成功，命令是： `chkconfiglist`

4.6 Linux 用户管理


Linux系统是一个多用户多任务的分时操作系统，任何一个要使用系统资源的用户，都必须首先向系统管理员申请一个账号，然后以这个账号的身份进入系统。

用户的账号一方面可以帮助系统管理员对使用系统的用户进行跟踪，并控制他们对系统资源的访问；另一方面也可以帮助用户组织文件，并为用户提供安全性保护。

**Linux用户管理相关命令:**

*   `useradd选项用户名`:添加用户账号
*   `userdel选项用户名`:删除用户帐号
*   `usermod选项用户名`:修改帐号
*   `passwd用户名`:更改或创建用户的密码
*   `passwd-S用户名` :显示用户账号密码信息
*   `passwd-d用户名`: 清除用户密码

useradd命令用于Linux中创建的新的系统用户。useradd可用来建立用户帐号。帐号建好之后，再用passwd设定帐号的密码．而可用userdel删除帐号。使用useradd指令所建立的帐号，实际上是保存在/etc/passwd文本文件中。

passwd命令用于设置用户的认证信息，包括用户密码、密码过期时间等。系统管理者则能用它管理系统用户的密码。只有管理者可以指定用户名称，一般用户只能变更自己的密码。

4.7 Linux系统用户组的管理


每个用户都有一个用户组，系统可以对一个用户组中的所有用户进行集中管理。不同Linux 系统对用户组的规定有所不同，如Linux下的用户属于与它同名的用户组，这个用户组在创建用户时同时创建。

用户组的管理涉及用户组的添加、删除和修改。组的增加、删除和修改实际上就是对/etc/group文件的更新。

**Linux系统用户组的管理相关命令:**

*   `groupadd选项用户组` :增加一个新的用户组
*   `groupdel用户组`:要删除一个已有的用户组
*   `groupmod选项用户组` : 修改用户组的属性

4.8 其他常用命令


*   **`pwd`：** 显示当前所在位置
*   **`grep要搜索的字符串要搜索的文件color`：** 搜索命令，color代表高亮显示
*   **`ps-ef`/ `ps aux`：** 这两个命令都是查看当前系统正在运行进程，两者的区别是展示格式不同。如果想要查看特定的进程可以使用这样的格式： **`ps aux|grep redis`**（查看包括redis字符串的进程）  
    注意：如果直接用ps（（Process Status））命令，会显示所有进程的状态，通常结合grep命令查看某进程的状态。
*   **`kill-9进程的pid`：** 杀死进程（-9 表示强制终止。）  
    先用ps查找进程，然后用kill杀掉
*   **网络通信命令：**  
      
    

*   查看当前系统的网卡信息：ifconfig
*   查看与某台机器的连接情况：ping
*   查看当前系统的端口使用：netstat -an

  

*   **`shutdown`：** `shutdown-h now`： 指定现在立即关机； `shutdown+5"System will shutdown after 5 minutes"`:指定5分钟后关机，同时送出警告信息给登入用户。
*   **`reboot`：** **`reboot`：** 重开机。 **`reboot-w`：** 做个重开机的模拟（只有纪录并不会真的重开机）。

> 如果你觉得我的文章对你有帮助话，欢迎关注我的微信公众号:"**Java面试通关手册**"（一个有温度的微信公众号，无广告，单纯技术分享，期待与你共同进步~~~坚持原创，分享美文，分享各种Java学习资源。)





> 这篇文章翻译自[http://www.thegeekstuff.com/2010/11/50-linux-commands/](http://link.zhihu.com/?target=http%3A//www.thegeekstuff.com/2010/11/50-linux-commands/)这些都是一些很常用的命令，这篇文章中每个命令都有一些简单的示例说明它的用法，对于想学习Unix/Linux的人，这些命令基本上都是需要掌握的：

同时我也做了一张简易版的图例：

<img src="https://pic4.zhimg.com/v2-d8c46a0dfeee8b6de28fd27ae869e0b3\_b.jpg" data-caption="" data-size="normal" data-rawwidth="1680" data-rawheight="2980" class="origin\_image zh-lightbox-thumb" width="1680" data-original="https://pic4.zhimg.com/v2-d8c46a0dfeee8b6de28fd27ae869e0b3_r.jpg">

![](https://pic4.zhimg.com/80/v2-d8c46a0dfeee8b6de28fd27ae869e0b3_hd.jpg)

这张图片的原图地址在[这里](http://link.zhihu.com/?target=https%3A//i.loli.net/2017/08/22/599b9b3ca5bb7.png)


## Linux命令行技巧

---
layout: post
title: 六个Linux技巧
---

* content
{:toc}





作者：Linux中国
链接：https://zhuanlan.zhihu.com/p/28948322
来源：知乎
著作权归作者所有，转载请联系作者获得授权。

一些非常有用的命令能让命令行的生活更满足
使用 Linux 命令工作可以获得许多乐趣，但是如果您使用一些命令，它们可以减少您的工作或以有趣的方式显示信息时，您将获得更多的乐趣。在今天的文章中，我们将介绍六个命令，它们可能会使你用在命令行上的时间更加值当。

### watch

watch 命令会重复运行您给出的任何命令，并显示输出。默认情况下，它每两秒运行一次命令。命令的每次运行都将覆盖上一次运行时显示的内容，因此您始终可以看到最新的数据。

您可能会在等待某人登录时使用它。在这种情况下，您可以使用 watch who 命令或者 watch -n 15 who命令使每 15 秒运行一次，而不是两秒一次。另外终端窗口的右上角会显示日期和时间。

```bash
$ watch -n 5 who
Every 5.0s: who                               stinkbug: Wed Aug 23 14:52:15 2017

shs      pts/0 2017-08-23 14:45 (192.168.0.11)
zoe      pts/1 2017-08-23 08:15 (192.168.0.19)
您也可以使用它来查看日志文件。如果您显示的数据没有任何变化，则只有窗口角落里的日期和时间会发生变化。

$ watch tail /var/log/syslog
Every 2.0s: tail /var/log/syslog              stinkbug: Wed Aug 23 15:16:37 2017

Aug 23 14:45:01 stinkbug CRON[7214]: (root) CMD (command -v debian-sa1 > /dev/nu
ll && debian-sa1 1 1)
Aug 23 14:45:17 stinkbug systemd[1]: Started Session 179 of user shs.
Aug 23 14:55:01 stinkbug CRON[7577]: (root) CMD (command -v debian-sa1 > /dev/nu
ll && debian-sa1 1 1)
Aug 23 15:05:01 stinkbug CRON[7582]: (root) CMD (command -v debian-sa1 > /dev/nu
ll && debian-sa1 1 1)
Aug 23 15:08:48 stinkbug systemd[1]: Starting Cleanup of Temporary Directories...
Aug 23 15:08:48 stinkbug systemd-tmpfiles[7584]: [/usr/lib/tmpfiles.d/var.conf:1
4] Duplicate line for path "/var/log", ignoring.
Aug 23 15:08:48 stinkbug systemd[1]: Started Cleanup of Temporary Directories.
Aug 23 15:13:41 stinkbug systemd[1]: Started Session 182 of user shs.
Aug 23 15:14:29 stinkbug systemd[1]: Started Session 183 of user shs.
Aug 23 15:15:01 stinkbug CRON[7828]: (root) CMD (command -v debian-sa1 > /dev/nu
ll && debian-sa1 1 1)
```

这里的输出和使用命令 tail -f /var/log/syslog 的输出相似。

### look

这个命令的名字 look 可能会让我们以为它和 watch 做类似的事情，但其实是不同的。look 命令用于搜索以某个特定字符串开头的单词。
```bash
$ look ecl
eclectic
eclectic's
eclectically
eclecticism
eclecticism's
eclectics
eclipse
eclipse's
eclipsed
eclipses
eclipsing
ecliptic
ecliptic's
```

look 命令通常有助于单词的拼写，它使用 /usr/share/dict/words 文件，除非你使用如下的命令指定了文件名：

```bash
$ look esac .bashrc
esac
esac
esac
```

在这种情况下，它的作用就像跟在一个 awk 命令后面的 grep ，只打印匹配行上的第一个单词。

### man -k

man -k 命令列出包含指定单词的手册页。它的工作基本上和 apropos 命令一样。

```bash
$ man -k logrotate
dh_installlogrotate (1) - install logrotate config files
logrotate (8) - rotates, compresses, and mails system logs
logrotate.conf (5) - rotates, compresses, and mails system logs
```

### help

当你完全绝望的时候，您可能会试图使用此命令，help 命令实际上是显示一个 shell 内置命令的列表。最令人惊讶的是它有相当多的参数变量。你可能会看到这样的东西，然后开始想知道这些内置功能可以为你做些什么：

```bash
$ help
GNU bash, version 4.4.7(1)-release (i686-pc-linux-gnu)
These shell commands are defined internally. Type `help' to see this list.
Type `help name' to find out more about the function `name'.
Use `info bash' to find out more about the shell in general.
Use `man -k' or `info' to find out more about commands not in this list.

A star (*) next to a name means that the command is disabled.

job_spec [&]                            history [-c] [-d offset] [n] or hist>
(( expression )) if COMMANDS; then COMMANDS; [ elif C>
. filename [arguments]                  jobs [-lnprs] [jobspec ...] or jobs >
: kill [-s sigspec | -n signum | -sigs>
[ arg... ]                              let arg [arg ...]
[[ expression ]] local [option] name[=value] ...
alias [-p] [name[=value] ... ]          logout [n]
bg [job_spec ...]                       mapfile [-d delim] [-n count] [-O or>
bind [-lpsvPSVX] [-m keymap] [-f file>  popd [-n] [+N | -N]
break [n] printf [-v var] format [arguments]
builtin [shell-builtin [arg ...]]       pushd [-n] [+N | -N | dir]
caller [expr] pwd [-LP]
case WORD in [PATTERN [| PATTERN]...)>  read [-ers] [-a array] [-d delim] [->
cd [-L|[-P [-e]] [-@]] [dir]            readarray [-n count] [-O origin] [-s>
command [-pVv] command [arg ...]        readonly [-aAf] [name[=value] ...] o>
compgen [-abcdefgjksuv] [-o option] [> return [n]
complete [-abcdefgjksuv] [-pr] [-DE] >  select NAME [in WORDS ... ;] do COMM>
compopt [-o|+o option] [-DE] [name ..> set [-abefhkmnptuvxBCHP] [-o option->
continue [n]                            shift [n]
coproc [NAME] command [redirections]    shopt [-pqsu] [-o] [optname ...]
declare [-aAfFgilnrtux] [-p] [name[=v>  source filename [arguments]
dirs [-clpv] [+N] [-N]                  suspend [-f]
disown [-h] [-ar] [jobspec ... | pid > test [expr]
echo [-neE] [arg ...] time [-p] pipeline
enable [-a] [-dnps] [-f filename] [na>  times
eval [arg ...]                          trap [-lp] [[arg] signal_spec ...]
exec [-cl] [-a name] [command [argume> true
exit [n]                                type [-afptP] name [name ...]
export [-fn] [name[=value] ...] or ex>  typeset [-aAfFgilnrtux] [-p] name[=v>
false                                   ulimit [-SHabcdefiklmnpqrstuvxPT] [l>
fc [-e ename] [-lnr] [first] [last] o>  umask [-p] [-S] [mode]
fg [job_spec]                           unalias [-a] name [name ...]
for NAME [in WORDS ... ] ; do COMMAND> unset [-f] [-v] [-n] [name ...]
for (( exp1; exp2; exp3 )); do COMMAN> until COMMANDS; do COMMANDS; done
function name { COMMANDS ; } or name >  variables - Names and meanings of so>
getopts optstring name [arg]            wait [-n] [id ...]
hash [-lr] [-p pathname] [-dt] [name > while COMMANDS; do COMMANDS; done
help [-dms] [pattern ...] { COMMANDS ; }
```

### stat -c

stat 命令用于显示文件的大小、所有者、用户组、索引节点号、权限、修改和访问时间等重要的统计信息。这是一个非常有用的命令，可以显示比 ls -l 更多的细节。

```bash
$ stat .bashrc
File: .bashrc
Size: 4048 Blocks: 8          IO Block: 4096   regular file
Device: 806h/2054d Inode: 421481 Links: 1
Access: (0644/-rw-r--r--) Uid: ( 1000/     shs) Gid: ( 1000/     shs)
Access: 2017-08-23 15:13:41.781809933 -0400
Modify: 2017-06-21 17:37:11.875157790 -0400
Change: 2017-06-21 17:37:11.899157791 -0400
Birth: -
```

使用 -c 选项，您可以指定要查看的字段。例如，如果您只想查看一个文件或一系列文件的文件名和访问权限，则可以这样做：

```bash
$ stat -c '%n %a' .bashrc
.bashrc 644
```

在此命令中， %n 表示每个文件的名称，而 %a 表示访问权限。%u 表示数字类型的 UID，而 %U 表示用户名。

```bash
$ stat -c '%n %a' bin/*
bin/loop 700
bin/move2nohup 700
bin/nohup.out 600
bin/show_release 700

$ stat -c '%n %a %U' bin/*
bin/loop 700 shs
bin/move2nohup 700 shs
bin/nohup.out 600 root
bin/show_release 700 shs
```



## Linux文件系统和ext简史

对于不熟悉 Linux 或文件系统的朋友而言，你可能不清楚 ext4 相对于上一版本 ext3 带来了什么变化。你可能还想知道在一连串关于替代的文件系统例如 Btrfs、XFS 和 ZFS 不断被发布的情况下，ext4 是否仍然能得到进一步的发展。

在一篇文章中，我们不可能讲述文件系统的所有方面，但我们尝试让你尽快了解 Linux 默认文件系统的发展历史，包括它的诞生以及未来发展。

我仔细研究了维基百科里的各种关于 ext 文件系统文章、http://kernel.org 的 wiki 中关于 ext4 的条目以及结合自己的经验写下这篇文章。

### MINIX 文件系统

在有 ext 之前，使用的是 MINIX 文件系统。如果你不熟悉 Linux 历史，那么可以理解为 MINIX 是用于 IBM PC/AT 微型计算机的一个非常小的类 Unix 系统。Andrew Tannenbaum 为了教学的目的而开发了它，并于 1987 年发布了源代码（以印刷版的格式！）。

虽然你可以细读 MINIX 的源代码，但实际上它并不是自由开源软件（FOSS）。出版 Tannebaum 著作的出版商要求你花 69 美元的许可费来运行 MINIX，而这笔费用包含在书籍的费用中。尽管如此，在那时来说非常便宜，并且 MINIX 的使用得到迅速发展，很快超过了 Tannebaum 当初使用它来教授操作系统编码的意图。在整个 20 世纪 90 年代，你可以发现 MINIX 的安装在世界各个大学里面非常流行。而此时，年轻的 Linus Torvalds 使用 MINIX 来开发原始 Linux 内核，并于 1991 年首次公布，而后在 1992 年 12 月在 GPL 开源协议下发布。

但是等等，这是一篇以 文件系统 为主题的文章不是吗？是的，MINIX 有自己的文件系统，早期的 Linux 版本依赖于它。跟 MINIX 一样，Linux 的文件系统也如同玩具那般小 —— MINIX 文件系统最多能处理 14 个字符的文件名，并且只能处理 64MB 的存储空间。到了 1991 年，一般的硬盘尺寸已经达到了 40-140 MB。很显然，Linux 需要一个更好的文件系统。

### ext

当 Linus 开发出刚起步的 Linux 内核时，Rémy Card 从事第一代的 ext 文件系统的开发工作。ext 文件系统在 1992 年首次实现并发布 —— 仅在 Linux 首次发布后的一年！—— ext 解决了 MINIX 文件系统中最糟糕的问题。

1992 年的 ext 使用在 Linux 内核中的新虚拟文件系统（VFS）抽象层。与之前的 MINIX 文件系统不同的是，ext 可以处理高达 2 GB 存储空间并处理 255 个字符的文件名。

但 ext 并没有长时间占统治地位，主要是由于它原始的时间戳（每个文件仅有一个时间戳，而不是今天我们所熟悉的有 inode、最近文件访问时间和最新文件修改时间的时间戳。）仅仅一年后，ext2 就替代了它。

### ext2

Rémy 很快就意识到 ext 的局限性，所以一年后他设计出 ext2 替代它。当 ext 仍然根植于 “玩具” 操作系统时，ext2 从一开始就被设计为一个商业级文件系统，沿用 BSD 的 Berkeley 文件系统的设计原理。

ext2 提供了 GB 级别的最大文件大小和 TB 级别的文件系统大小，使其在 20 世纪 90 年代的地位牢牢巩固在文件系统大联盟中。很快它被广泛地使用，无论是在 Linux 内核中还是最终在 MINIX 中，且利用第三方模块可以使其应用于 MacOS 和 Windows。

但这里仍然有一些问题需要解决：ext2 文件系统与 20 世纪 90 年代的大多数文件系统一样，如果在将数据写入到磁盘的时候，系统发生崩溃或断电，则容易发生灾难性的数据损坏。随着时间的推移，由于碎片（单个文件存储在多个位置，物理上其分散在旋转的磁盘上），它们也遭受了严重的性能损失。

尽管存在这些问题，但今天 ext2 还是用在某些特殊的情况下 —— 最常见的是，作为便携式 USB 驱动器的文件系统格式。

### ext3

1998 年，在 ext2 被采用后的 6 年后，Stephen Tweedie 宣布他正在致力于改进 ext2。这成了 ext3，并于 2001 年 11 月在 2.4.15 内核版本中被采用到 Linux 内核主线中。


在大部分情况下，ext2 在 Linux 发行版中工作得很好，但像 FAT、FAT32、HFS 和当时的其它文件系统一样 —— 在断电时容易发生灾难性的破坏。如果在将数据写入文件系统时候发生断电，则可能会将其留在所谓 不一致 的状态 —— 事情只完成一半而另一半未完成。这可能导致大量文件丢失或损坏，这些文件与正在保存的文件无关甚至导致整个文件系统无法卸载。

ext3 和 20 世纪 90 年代后期的其它文件系统，如微软的 NTFS，使用 日志 来解决这个问题。日志是磁盘上的一种特殊的分配区域，其写入被存储在事务中；如果该事务完成磁盘写入，则日志中的数据将提交给文件系统自身。如果系统在该操作提交前崩溃，则重新启动的系统识别其为未完成的事务而将其进行回滚，就像从未发生过一样。这意味着正在处理的文件可能依然会丢失，但文件系统 本身 保持一致，且其它所有数据都是安全的。

在使用 ext3 文件系统的 Linux 内核中实现了三个级别的日志记录方式： 日记(journal)、 顺序(ordered)和 回写(writeback)。

日记 是最低风险模式，在将数据和元数据提交给文件系统之前将其写入日志。这可以保证正在写入的文件与整个文件系统的一致性，但其显著降低了性能。
顺序 是大多数 Linux 发行版默认模式；顺序模式将元数据写入日志而直接将数据提交到文件系统。顾名思义，这里的操作顺序是固定的：首先，元数据提交到日志；其次，数据写入文件系统，然后才将日志中关联的元数据更新到文件系统。这确保了在发生崩溃时，那些与未完整写入相关联的元数据仍在日志中，且文件系统可以在回滚日志时清理那些不完整的写入事务。在顺序模式下，系统崩溃可能导致在崩溃期间文件的错误被主动写入，但文件系统它本身 —— 以及未被主动写入的文件 —— 确保是安全的。
回写 是第三种模式 —— 也是最不安全的日志模式。在回写模式下，像顺序模式一样，元数据会被记录到日志，但数据不会。与顺序模式不同，元数据和数据都可以以任何有利于获得最佳性能的顺序写入。这可以显著提高性能，但安全性低很多。尽管回写模式仍然保证文件系统本身的安全性，但在崩溃或崩溃之前写入的文件很容易丢失或损坏。
跟之前的 ext2 类似，ext3 使用 16 位内部寻址。这意味着对于有着 4K 块大小的 ext3 在最大规格为 16 TiB 的文件系统中可以处理的最大文件大小为 2 TiB。

### ext4

Theodore Ts'o（是当时 ext3 主要开发人员）在 2006 年发表的 ext4，于两年后在 2.6.28 内核版本中被加入到了 Linux 主线。

Ts'o 将 ext4 描述为一个显著扩展 ext3 但仍然依赖于旧技术的临时技术。他预计 ext4 终将会被真正的下一代文件系统所取代。

ext4 在功能上与 ext3 在功能上非常相似，但支持大文件系统，提高了对碎片的抵抗力，有更高的性能以及更好的时间戳。

**ext4 vs ext3**

ext3 和 ext4 有一些非常明确的差别，在这里集中讨论下。

向后兼容性

ext4 特地设计为尽可能地向后兼容 ext3。这不仅允许 ext3 文件系统原地升级到 ext4；也允许 ext4 驱动程序以 ext3 模式自动挂载 ext3 文件系统，因此使它无需单独维护两个代码库。

**大文件系统**

ext3 文件系统使用 32 位寻址，这限制它仅支持 2 TiB 文件大小和 16 TiB 文件系统系统大小（这是假设在块大小为 4 KiB 的情况下，一些 ext3 文件系统使用更小的块大小，因此对其进一步被限制）。

ext4 使用 48 位的内部寻址，理论上可以在文件系统上分配高达 16 TiB 大小的文件，其中文件系统大小最高可达 1000000 TiB（1 EiB）。在早期 ext4 的实现中有些用户空间的程序仍然将其限制为最大大小为 16 TiB 的文件系统，但截至 2011 年，e2fsprogs 已经直接支持大于 16 TiB 大小的 ext4 文件系统。例如，红帽企业 Linux 在其合同上仅支持最高 50 TiB 的 ext4 文件系统，并建议 ext4 卷不超过 100 TiB。

**分配方式改进**

ext4 在将存储块写入磁盘之前对存储块的分配方式进行了大量改进，这可以显著提高读写性能。

**区段**

区段(extent)是一系列连续的物理块 (最多达 128 MiB，假设块大小为 4 KiB），可以一次性保留和寻址。使用区段可以减少给定文件所需的 inode 数量，并显著减少碎片并提高写入大文件时的性能。

**多块分配**

ext3 为每一个新分配的块调用一次块分配器。当多个写入同时打开分配器时，很容易导致严重的碎片。然而，ext4 使用延迟分配，这允许它合并写入并更好地决定如何为尚未提交的写入分配块。

**持久的预分配**

在为文件预分配磁盘空间时，大部分文件系统必须在创建时将零写入该文件的块中。ext4 允许替代使用 fallocate()，它保证了空间的可用性（并试图为它找到连续的空间），而不需要先写入它。这显著提高了写入和将来读取流和数据库应用程序的写入数据的性能。

**延迟分配**

这是一个耐人寻味而有争议性的功能。延迟分配允许 ext4 等待分配将写入数据的实际块，直到它准备好将数据提交到磁盘。（相比之下，即使数据仍然在往写入缓存中写入，ext3 也会立即分配块。）

当缓存中的数据累积时，延迟分配块允许文件系统对如何分配块做出更好的选择，降低碎片（写入，以及稍后的读）并显著提升性能。然而不幸的是，它 增加 了还没有专门调用 fsync() 方法（当程序员想确保数据完全刷新到磁盘时）的程序的数据丢失的可能性。

假设一个程序完全重写了一个文件：

fd=open("file", O_TRUNC); write(fd, data); close(fd);
使用旧的文件系统，close(fd); 足以保证 file 中的内容刷新到磁盘。即使严格来说，写不是事务性的，但如果文件关闭后发生崩溃，则丢失数据的风险很小。

如果写入不成功（由于程序上的错误、磁盘上的错误、断电等），文件的原始版本和较新版本都可能丢失数据或损坏。如果其它进程在写入文件时访问文件，则会看到损坏的版本。如果其它进程打开文件并且不希望其内容发生更改 —— 例如，映射到多个正在运行的程序的共享库。这些进程可能会崩溃。

为了避免这些问题，一些程序员完全避免使用 O_TRUNC。相反，他们可能会写入一个新文件，关闭它，然后将其重命名为旧文件名：

fd=open("newfile"); write(fd, data); close(fd); rename("newfile", "file");
在 没有 延迟分配的文件系统下，这足以避免上面列出的潜在的损坏和崩溃问题：因为 rename() 是原子操作，所以它不会被崩溃中断；并且运行的程序将继续引用旧的文件。现在 file 的未链接版本只要有一个打开的文件文件句柄即可。但是因为 ext4 的延迟分配会导致写入被延迟和重新排序，rename("newfile", "file") 可以在 newfile 的内容实际写入磁盘内容之前执行，这出现了并行进行再次获得 file 坏版本的问题。

为了缓解这种情况，Linux 内核（自版本 2.6.30）尝试检测这些常见代码情况并强制立即分配。这会减少但不能防止数据丢失的可能性 —— 并且它对新文件没有任何帮助。如果你是一位开发人员，请注意：保证数据立即写入磁盘的唯一方法是正确调用 fsync()。

**无限制的子目录**

ext3 仅限于 32000 个子目录；ext4 允许无限数量的子目录。从 2.6.23 内核版本开始，ext4 使用 HTree 索引来减少大量子目录的性能损失。

**日志校验**

ext3 没有对日志进行校验，这给处于内核直接控制之外的磁盘或自带缓存的控制器设备带来了问题。如果控制器或具自带缓存的磁盘脱离了写入顺序，则可能会破坏 ext3 的日记事务顺序，从而可能破坏在崩溃期间（或之前一段时间）写入的文件。

理论上，这个问题可以使用写入 障碍(barrier) —— 在安装文件系统时，你在挂载选项设置 barrier=1，然后设备就会忠实地执行 fsync 一直向下到底层硬件。通过实践，可以发现存储设备和控制器经常不遵守写入障碍 —— 提高性能（和跟竞争对手比较的性能基准），但增加了本应该防止数据损坏的可能性。

对日志进行校验和允许文件系统崩溃后第一次挂载时意识到其某些条目是无效或无序的。因此，这避免了回滚部分条目或无序日志条目的错误，并进一步损坏的文件系统 —— 即使部分存储设备假做或不遵守写入障碍。

**快速文件系统检查**

在 ext3 下，在 fsck 被调用时会检查整个文件系统 —— 包括已删除或空文件。相比之下，ext4 标记了 inode 表未分配的块和扇区，从而允许 fsck 完全跳过它们。这大大减少了在大多数文件系统上运行 fsck 的时间，它实现于内核 2.6.24。

**改进的时间戳**

ext3 提供粒度为一秒的时间戳。虽然足以满足大多数用途，但任务关键型应用程序经常需要更严格的时间控制。ext4 通过提供纳秒级的时间戳，使其可用于那些企业、科学以及任务关键型的应用程序。

ext3 文件系统也没有提供足够的位来存储 2038 年 1 月 18 日以后的日期。ext4 在这里增加了两个位，将 Unix 纪元扩展了 408 年。如果你在公元 2446 年读到这篇文章，你很有可能已经转移到一个更好的文件系统 —— 如果你还在测量自 1970 年 1 月 1 日 00:00（UTC）以来的时间，这会让我死后得以安眠。

**在线碎片整理**

ext2 和 ext3 都不直接支持在线碎片整理 —— 即在挂载时会对文件系统进行碎片整理。ext2 有一个包含的实用程序 e2defrag，它的名字暗示 —— 它需要在文件系统未挂载时脱机运行。（显然，这对于根文件系统来说非常有问题。）在 ext3 中的情况甚至更糟糕 —— 虽然 ext3 比 ext2 更不容易受到严重碎片的影响，但 ext3 文件系统运行 e2defrag 可能会导致灾难性损坏和数据丢失。

尽管 ext3 最初被认为“不受碎片影响”，但对同一文件（例如 BitTorrent）采用大规模并行写入过程的过程清楚地表明情况并非完全如此。一些用户空间的手段和解决方法，例如 Shake，以这样或那样方式解决了这个问题 —— 但它们比真正的、文件系统感知的、内核级碎片整理过程更慢并且在各方面都不太令人满意。

ext4 通过 e4defrag 解决了这个问题，且是一个在线、内核模式、文件系统感知、块和区段级别的碎片整理实用程序。

**正在进行的 ext4 开发**

ext4，正如 Monty Python 中瘟疫感染者曾经说过的那样，“我还没死呢！”虽然它的主要开发人员认为它只是一个真正的下一代文件系统的权宜之计，但是在一段时间内，没有任何可能的候选人准备好（由于技术或许可问题）部署为根文件系统。

在未来的 ext4 版本中仍然有一些关键功能要开发，包括元数据校验和、一流的配额支持和大分配块。

**元数据校验和**

由于 ext4 具有冗余超级块，因此为文件系统校验其中的元数据提供了一种方法，可以自行确定主超级块是否已损坏并需要使用备用块。可以在没有校验和的情况下，从损坏的超级块恢复 —— 但是用户首先需要意识到它已损坏，然后尝试使用备用方法手动挂载文件系统。由于在某些情况下，使用损坏的主超级块安装文件系统读写可能会造成进一步的损坏，即使是经验丰富的用户也无法避免，这也不是一个完美的解决方案！

与 Btrfs 或 ZFS 等下一代文件系统提供的极其强大的每块校验和相比，ext4 的元数据校验和的功能非常弱。但它总比没有好。虽然校验 所有的事情 都听起来很简单！—— 事实上，将校验和与文件系统连接到一起有一些重大的挑战；请参阅设计文档了解详细信息。

**一流的配额支持**

等等，配额？！从 ext2 出现的那天开始我们就有了这些！是的，但它们一直都是事后的添加的东西，而且它们总是犯傻。这里可能不值得详细介绍，但设计文档列出了配额将从用户空间移动到内核中的方式，并且能够更加正确和高效地执行。

**大分配块**

随着时间的推移，那些讨厌的存储系统不断变得越来越大。由于一些固态硬盘已经使用 8K 硬件块大小，因此 ext4 对 4K 模块的当前限制越来越受到限制。较大的存储块可以显著减少碎片并提高性能，代价是增加“松弛”空间（当你只需要块的一部分来存储文件或文件的最后一块时留下的空间）。

你可以在设计文档中查看详细说明。

### ext4 的实际限制

ext4 是一个健壮、稳定的文件系统。如今大多数人都应该在用它作为根文件系统，但它无法处理所有需求。让我们简单地谈谈你不应该期待的一些事情 —— 现在或可能在未来：

虽然 ext4 可以处理高达 1 EiB 大小（相当于 1,000,000 TiB）大小的数据，但你 真的 不应该尝试这样做。除了能够记住更多块的地址之外，还存在规模上的问题。并且现在 ext4 不会处理（并且可能永远不会）超过 50-100 TiB 的数据。

ext4 也不足以保证数据的完整性。随着日志记录的重大进展又回到了 ext3 的那个时候，它并未涵盖数据损坏的许多常见原因。如果数据已经在磁盘上被破坏 —— 由于故障硬件，宇宙射线的影响（是的，真的），或者只是数据随时间衰减 —— ext4 无法检测或修复这种损坏。

基于上面两点，ext4 只是一个纯 文件系统，而不是存储卷管理器。这意味着，即使你有多个磁盘 —— 也就是奇偶校验或冗余，理论上你可以从 ext4 中恢复损坏的数据，但无法知道使用它是否对你有利。虽然理论上可以在不同的层中分离文件系统和存储卷管理系统而不会丢失自动损坏检测和修复功能，但这不是当前存储系统的设计方式，并且它将给新设计带来重大挑战。

### 备用文件系统

在我们开始之前，提醒一句：要非常小心，没有任何备用的文件系统作为主线内核的一部分而内置和直接支持！

即使一个文件系统是 安全的，如果在内核升级期间出现问题，使用它作为根文件系统也是非常可怕的。如果你没有充分的理由通过一个 chroot 去使用替代介质引导，耐心地操作内核模块、grub 配置和 DKMS……不要在一个很重要的系统中去掉预留的根文件。

可能有充分的理由使用你的发行版不直接支持的文件系统 —— 但如果你这样做，我强烈建议你在系统启动并可用后再安装它。（例如，你可能有一个 ext4 根文件系统，但是将大部分数据存储在 ZFS 或 Btrfs 池中。）

**XFS**

XFS 与非 ext 文件系统在 Linux 中的主线中的地位一样。它是一个 64 位的日志文件系统，自 2001 年以来内置于 Linux 内核中，为大型文件系统和高度并发性提供了高性能（即大量的进程都会立即写入文件系统）。

从 RHEL 7 开始，XFS 成为 Red Hat Enterprise Linux 的默认文件系统。对于家庭或小型企业用户来说，它仍然有一些缺点 —— 最值得注意的是，重新调整现有 XFS 文件系统是一件非常痛苦的事情，不如创建另一个并复制数据更有意义。

虽然 XFS 是稳定的且是高性能的，但它和 ext4 之间没有足够具体的最终用途差异，以值得推荐在非默认（如 RHEL7）的任何地方使用它，除非它解决了对 ext4 的特定问题，例如大于 50 TiB 容量的文件系统。

XFS 在任何方面都不是 ZFS、Btrfs 甚至 WAFL（一个专有的 SAN 文件系统）的“下一代”文件系统。就像 ext4 一样，它应该被视为一种更好的方式的权宜之计。

**ZFS**

ZFS 由 Sun Microsystems 开发，以 zettabyte 命名 —— 相当于 1 万亿 GB —— 因为它理论上可以解决大型存储系统。

作为真正的下一代文件系统，ZFS 提供卷管理（能够在单个文件系统中处理多个单独的存储设备），块级加密校验和（允许以极高的准确率检测数据损坏），自动损坏修复（其中冗余或奇偶校验存储可用），快速异步增量复制，内联压缩等，以及更多。

从 Linux 用户的角度来看，ZFS 的最大问题是许可证问题。ZFS 许可证是 CDDL 许可证，这是一种与 GPL 冲突的半许可的许可证。关于在 Linux 内核中使用 ZFS 的意义存在很多争议，其争议范围从“它是 GPL 违规”到“它是 CDDL 违规”到“它完全没问题，它还没有在法庭上进行过测试。”最值得注意的是，自 2016 年以来 Canonical 已将 ZFS 代码内联在其默认内核中，而且目前尚无法律挑战。

此时，即使我作为一个非常狂热于 ZFS 的用户，我也不建议将 ZFS 作为 Linux 的根文件系统。如果你想在 Linux 上利用 ZFS 的优势，用 ext4 设置一个小的根文件系统，然后将 ZFS 用在你剩余的存储上，把数据、应用程序以及你喜欢的东西放在它上面 —— 但把 root 分区保留在 ext4 上，直到你的发行版明确支持 ZFS 根目录。

**Btrfs**

Btrfs 是 B-Tree Filesystem 的简称，通常发音为 “butter” —— 由 Chris Mason 于 2007 年在 Oracle 任职期间发布。Btrfs 旨在跟 ZFS 有大部分相同的目标，提供多种设备管理、每块校验、异步复制、直列压缩等，还有更多。

截至 2018 年，Btrfs 相当稳定，可用作标准的单磁盘文件系统，但可能不应该依赖于卷管理器。与许多常见用例中的 ext4、XFS 或 ZFS 相比，它存在严重的性能问题，其下一代功能 —— 复制、多磁盘拓扑和快照管理 —— 可能非常多，其结果可能是从灾难性地性能降低到实际数据的丢失。

Btrfs 的维持状态是有争议的；SUSE Enterprise Linux 在 2015 年采用它作为默认文件系统，而 Red Hat 于 2017 年宣布它从 RHEL 7.4 开始不再支持 Btrfs。可能值得注意的是，该产品支持 Btrfs 部署用作单磁盘文件系统，而不是像 ZFS 中的多磁盘卷管理器，甚至 Synology 在它的存储设备使用 Btrfs，但是它在传统 Linux 内核 RAID（mdraid）之上分层来管理磁盘。


## 自定义Bash提示符

当你在 Linux 环境下打开一个 Shell 终端时，会看到命令行中出现了类似下面的一个 Bash 提示符：

```bash
[user@$host ~]$
```
你知道命令行提示符其实是可以自己设置添加许多非常有用的信息的吗？在这篇文章中我就会教你如何自定义自己的 Bash 命令行提示符，想看的话就接着看吧~

**如何设置 Bash 提示符**

Bash 提示符是通过环境变量 PS1 （提示符字符串 1Prompt String 1） 来设置的，它用于交互式 shell 提示符。当然如果你需要更多的输入才能完成一个 Bash 命令时，PS2 环境变量就是用来设置多行提示符的：
```bash
[dneary@dhcp-41-137 ~]$ export PS1="[Linux Rulez]$ "
[Linux Rulez] export PS2="... "
[Linux Rulez] if true; then
... echo "Success!"
... fi
Success!
```
在哪里设置 PS1 的值？

PS1 就是一个普通的环境变量，系统默认值设置在 /etc/bashrc 中，在我的系统中，默认提示符通过以下命令来设置的：
```bash
[ "$PS1" = "\\s-\\v\\\$ " ] && PS1="[\u@\h \W]\\$ "
```
它判断 PS1 是否是系统的默认值 \s-\v$ ，如果是的话则将值设置为 [\u@\h \W]\$。（LCTT 译注：注意命令中用 \ 做了转义。）

但如果你想要自定义提示符，不应该修改 /etc/bashrc ，而是应该在你的主目录下将自定义命令加到 .bashrc 文件中。

上面提到的 \u、\h、\W、\s 和 \v 是什么意思？

在 man bash 中的 PROMPTING 章节中，你能够找到所有 PS1 和 PS2 相关的特殊字符的描述，以下是一些比较常用的：

`\u：用户名
\h：短主机名
\W：当前你所在的目录的名称（basename），~ 表示你的主目录
\s：Shell 名字（bash 或者 sh，取决于你的 Shell 的名字是什么）
\v：Shell 的版本号`
还有哪些特殊的字符串可以用在提示符当中

除了上面这些，还有很多有用的字符串可以用在提示符当中：

```bash
\d：将日期扩展成 “Tue Jun 27” 这种格式
\D{fmt}：允许自定义日期格式——可通过 man strftime 来获得更多信息
\D\{\%c}：获得本地化的日期和时间
\n：换行（参考下面的多行提示符）
\w：显示当前工作目录的完整路径
\H：当前工作机器的完整主机名
```
除了以上这些，你还可以在 Bash 的 man 页面的 PROMPTING 部分找到更多的特殊字符和它的用处。

多行提示符

如果你的提示符过长（比如说你想包括 \H 、\w 或完整的日期时间时 ），想将提示符切成两行，可以使用 \n 将提示符切断成两行显示，比如下面的多行的例子会在第一行显示日期、时间和当前工作目录，第二行显示用户名和主机名：
```bash
PS1="\D\{\%c} \w\n[\u@\H]$ "
```

还能再好玩点吗？

人们偶尔也想将提示符变成彩色的。虽然我觉得彩色提示符让人分心、易怒，但是也许你很喜欢。如果我们想将日期变成红色的，目录变成青蓝色，用户名搞一个黄色背景，你可以这样做：

```bash
PS1="\[\e[31m\]\D\{\%c}\[\e[0m\]
    \[\e[36m\]\w\[\e[0m\]\n[\[\e[1;43m\]\u\[\e[0m\]@\H]$ "
```

```bash
\[..\] ：表示一些非打印字符
\e[.. ：转义字符，后面的跟着的特定的转义字符串在终端中表示颜色或者其他意思
31m ：表示红色字体（41m 表示是红色背景）
36m ：表示是青蓝色字体
1;43m ：表示黄色字体（1;33m 表示黄色字体）
[\e[0m]] ：它在最后将颜色恢复成系统终端默认颜色
```

你可以在 Bash prompt HOWTO 这里找到更多的颜色代码，甚至可以让字符反相和闪烁！我不知道为什么地球人会有这种想法，但是你可以这么干！


## 常用Linux命令

### 1\. tar


创建一个新的tar文件

    $ tar cvf archive_name.tar dirname/
    

解压tar文件

    $ tar xvf archive_name.tar
    

查看tar文件

    $ tar tvf archive_name.tar
    

更多示例：[The Ultimate Tar Command Tutorial with 10 Practical Examples](http://link.zhihu.com/?target=http%3A//www.thegeekstuff.com/2010/04/unix-tar-command-examples/)

### 2\. grep


在文件中查找字符串(不区分大小写)

    $ grep -i "the" demo_file
    

输出成功匹配的行，以及该行之后的三行

    $ grep -A 3 -i "example" demo_text
    

在一个文件夹中递归查询包含指定字符串的文件

    $ grep -r "ramesh" *
    

更多示例：[Get a Grip on the Grep! – 15 Practical Grep Command Examples](http://link.zhihu.com/?target=http%3A//www.thegeekstuff.com/2009/03/15-practical-unix-grep-command-examples/)

### 3\. find


查找指定文件名的文件(不区分大小写)

    $ find -iname "MyProgram.c"
    

对找到的文件执行某个命令

    $ find -iname "MyProgram.c" -exec md5sum {} \;
    

查找home目录下的所有空文件

    $ find ~ -empty
    

更多示例：[Mommy, I found it! — 15 Practical Linux Find Command Examples](http://link.zhihu.com/?target=http%3A//www.thegeekstuff.com/2009/03/15-practical-linux-find-command-examples/)

### 4\. ssh


登录到远程主机

    $ ssh -l jsmith remotehost.example.com
    

调试ssh客户端

    $ ssh -v -l jsmith remotehost.example.com
    

显示ssh客户端版本

    $ ssh -V
    

更多示例：[5 Basic Linux SSH Client Commands](http://link.zhihu.com/?target=http%3A//www.thegeekstuff.com/2008/05/5-basic-linux-ssh-client-commands/)

### 5\. sed


当你将Dos系统中的文件复制到Unix/Linux后，这个文件每行都会以\\r\\n结尾，sed可以轻易将其转换为Unix格式的文件，使用\\n结尾的文件

    $ sed 's/.$//' filename
    

反转文件内容并输出

    $ sed -n '1!G; h; p' filename
    

为非空行添加行号

    $ sed '/./=' thegeekstuff.txt | sed 'N; s/\n/ /'
    

更多示例：[Advanced Sed Substitution Examples](http://link.zhihu.com/?target=http%3A//www.thegeekstuff.com/2009/10/unix-sed-tutorial-advanced-sed-substitution-examples/)

### 6\. awk


删除重复行

    $ awk '!($0 in array) { array[$0]; print}' temp
    

打印/etc/passwd中所有包含同样的uid和gid的行

    $ awk -F ':' '$3=$4' /etc/passwd
    

打印文件中的指定部分的字段

    $ awk '{print $2,$5;}' employee.txt
    

更多示例：[8 Powerful Awk Built-in Variables – FS, OFS, RS, ORS, NR, NF, FILENAME, FNR](http://link.zhihu.com/?target=http%3A//www.thegeekstuff.com/2010/01/8-powerful-awk-built-in-variables-fs-ofs-rs-ors-nr-nf-filename-fnr/)

### 7\. vim


打开文件并跳到第10行

    $ vim +10 filename.txt
    

打开文件跳到第一个匹配的行

    $ vim +/search-term filename.txt
    

以只读模式打开文件

    $ vim -R /etc/passwd
    

更多示例：[How To Record and Play in Vim Editor](http://link.zhihu.com/?target=http%3A//www.thegeekstuff.com/2009/01/vi-and-vim-macro-tutorial-how-to-record-and-play/)

### 8\. diff


比较的时候忽略空白符

    $ diff -w name_list.txt name_list_new.txt
    

### 9\. sort


以升序对文件内容排序

    $ sort names.txt
    

以降序对文件内容排序

    $ sort -r names.txt
    

以第三个字段对/etc/passwd的内容排序

    $ sort -t: -k 3n /etc/passwd | more
    

### 10\. export


输出跟字符串oracle匹配的环境变量

    $ export | grep ORCALE
    declare -x ORACLE_BASE="/u01/app/oracle"
    declare -x ORACLE_HOME="/u01/app/oracle/product/10.2.0"
    declare -x ORACLE_SID="med"
    declare -x ORACLE_TERM="xterm"
    

设置全局环境变量

    $ export ORACLE_HOME=/u01/app/oracle/product/10.2.0
    

### 11\. xargs


将所有图片文件拷贝到外部驱动器

    $ ls *.jpg | xargs -n1 -i cp {} /external-hard-drive/directory
    

将系统中所有jpd文件压缩打包

    $ find / -name *.jpg -type f -print | xargs tar -cvzf images.tar.gz
    

下载文件中列出的所有url对应的页面

    $ cat url-list.txt | xargs wget –c
    

### 12\. ls


以易读的方式显示文件大小(显示为MB,GB...)

    $ ls -lh
    -rw-r 1 ramesh team-dev 8.9M Jun 12 15:27 arch-linux.txt.gz
    

以最后修改时间升序列出文件

    $ ls -ltr
    

在文件名后面显示文件类型

    $ ls -F
    

更多示例：[Unix LS Command: 15 Practical Examples](http://link.zhihu.com/?target=http%3A//www.thegeekstuff.com/2009/07/linux-ls-command-examples/)

### 13\. pwd


输出当前工作目录

### 14\. cd


    cd -可以在最近工作的两个目录间切换
    

使用**shopt -s cdspell**可以设置自动对cd命令进行拼写检查

更多示例：[6 Awesome Linux cd command Hacks](http://link.zhihu.com/?target=http%3A//www.thegeekstuff.com/2008/10/6-awesome-linux-cd-command-hacks-productivity-tip3-for-geeks/)

### 15\. gzip


创建一个*.gz的压缩文件

    $ gzip test.txt
    

解压*.gz文件

    $ gzip -d test.txt.gz
    

显示压缩的比率

    $ gzip -l *.gz
         compressed        uncompressed  ratio uncompressed_name
              23709               97975  75.8% asp-patch-rpms.txt
    

### 16\. bzip2


创建*.bz2压缩文件

    $ bzip2 test.txt
    

解压*.bz2文件

    bzip2 -d test.txt.bz2
    

更多示例：[BZ is Eazy! bzip2, bzgrep, bzcmp, bzdiff, bzcat, bzless, bzmore examples](http://link.zhihu.com/?target=http%3A//www.thegeekstuff.com/2010/10/bzcommand-examples/)

### 17\. uzip


解压*.zip文件

    $ unzip test.zip
    

查看*.zip文件的内容

    $ unzip -l jasper.zip
    Archive:  jasper.zip
    Length     Date   Time    Name
               
    40995  11-30-98 23:50   META-INF/MANIFEST.MF
    32169  08-25-98 21:07   classes_
    15964  08-25-98 21:07   classes_names
    10542  08-25-98 21:07   classes_ncomp
    

### 18\. shutdown


关闭系统并立即关机

    $ shutdown -h now
    

10分钟后关机

    $ shutdown -h +10
    

重启

    $ shutdown -r now
    

重启期间强制进行系统检查

    $ shutdown -Fr now
    

### 19\. ftp


ftp命令和sftp命令的用法基本相似连接ftp服务器并下载多个文件

    $ ftp IP/hostname
    ftp> mget *.html
    

显示远程主机上文件列表

    ftp> mls *.html -
    /ftptest/features.html
    /ftptest/index.html
    /ftptest/othertools.html
    /ftptest/samplereport.html
    /ftptest/usage.html
    

更多示例：[FTP and SFTP Beginners Guide with 10 Examples](http://link.zhihu.com/?target=http%3A//www.thegeekstuff.com/2010/06/ftp-sftp-tutorial/)

### 20\. crontab


查看某个用户的crontab入口

    $ crontab -u john -l
    

设置一个每十分钟执行一次的计划任务

    */10 * * * * /home/ramesh/check-disk-space
    

更多示例：[Linux Crontab: 15 Awesome Cron Job Examples](http://link.zhihu.com/?target=http%3A//www.thegeekstuff.com/2009/06/15-practical-crontab-examples/)

### 21\. service


service命令用于运行System V init脚本，这些脚本一般位于/etc/init.d文件下，这个命令可以直接运行这个文件夹里面的脚本，而不用加上路径

查看服务状态

    $ service ssh status
    

查看所有服务状态

    $ service status-all
    

重启服务

    $ service ssh restart
    

### 22\. ps


ps命令用于显示正在运行中的进程的信息，ps命令有很多选项，这里只列出了几个

查看当前正在运行的所有进程

    $ ps -ef | more
    

以树状结构显示当前正在运行的进程，H选项表示显示进程的层次结构

    $ ps -efH | more
    

### 23\. free


这个命令用于显示系统当前内存的使用情况，包括已用内存、可用内存和交换内存的情况

默认情况下free会以字节为单位输出内存的使用量

    $ free
                 total       used       free     shared    buffers     cached
    Mem:       3566408    1580220    1986188          0     203988     902960
    -/+ buffers/cache:     473272    3093136
    Swap:      4000176          0    4000176
    

如果你想以其他单位输出内存的使用量，需要加一个选项，-g为GB，-m为MB，-k为KB，-b为字节

    $ free -g
                 total       used       free     shared    buffers     cached
    Mem:             3          1          1          0          0          0
    -/+ buffers/cache:          0          2
    Swap:            3          0          3
    

如果你想查看所有内存的汇总，请使用-t选项，使用这个选项会在输出中加一个汇总行

    ramesh@ramesh-laptop:~$ free -t
                 total       used       free     shared    buffers     cached
    Mem:       3566408    1592148    1974260          0     204260     912556
    -/+ buffers/cache:     475332    3091076
    Swap:      4000176          0    4000176
    Total:     7566584    1592148    5974436
    

### 24\. top


top命令会显示当前系统中占用资源最多的一些进程（默认以CPU占用率排序）如果你想改变排序方式，可以在结果列表中点击O（大写字母O）会显示所有可用于排序的列，这个时候你就可以选择你想排序的列

    Current Sort Field:  P  for window 1:Def
    Select sort field via field letter, type any other key to return
    
      a: PID        = Process Id              v: nDRT       = Dirty Pages count
      d: UID        = User Id                 y: WCHAN      = Sleeping in Function
      e: USER       = User Name               z: Flags      = Task Flags
      ........
    

如果只想显示某个特定用户的进程，可以使用-u选项

    $ top -u oracle
    

更多示例：[Can You Top This? 15 Practical Linux Top Command Examples](http://link.zhihu.com/?target=http%3A//www.thegeekstuff.com/2010/01/15-practical-unix-linux-top-command-examples/)

### 25\. df


显示文件系统的磁盘使用情况，默认情况下df -k 将以字节为单位输出磁盘的使用量

    $ df -k
    Filesystem           1K-blocks      Used Available Use% Mounted on
    /dev/sda1             29530400   3233104  24797232  12% /
    /dev/sda2            120367992  50171596  64082060  44% /home
    

使用-h选项可以以更符合阅读习惯的方式显示磁盘使用量

    $ df -h
    Filesystem                  Size   Used  Avail Capacity  iused      ifree %iused  Mounted on
    /dev/disk0s2               232Gi   84Gi  148Gi    37% 21998562   38864868   36%   /
    devfs                      187Ki  187Ki    0Bi   100%      648          0  100%   /dev
    map -hosts                   0Bi    0Bi    0Bi   100%        0          0  100%   /net
    map auto_home                0Bi    0Bi    0Bi   100%        0          0  100%   /home
    /dev/disk0s4               466Gi   45Gi  421Gi    10%   112774  440997174    0%   /Volumes/BOOTCAMP
    //app@izenesoft.cn/public  2.7Ti  1.3Ti  1.4Ti    48%        0 18446744073709551615    0%   /Volumes/public
    

使用-T选项显示文件系统类型

    $ df -T
    Filesystem    Type   1K-blocks      Used Available Use% Mounted on
    /dev/sda1     ext4    29530400   3233120  24797216  12% /
    /dev/sda2     ext4   120367992  50171596  64082060  44% /home
    

### 26\. kill


kill用于终止一个进程。一般我们会先用ps -ef查找某个进程得到它的进程号，然后再使用kill -9 进程号终止该进程。你还可以使用killall、pkill、xkill来终止进程

    $ ps -ef | grep vim
    ramesh    7243  7222  9 22:43 pts/2    00:00:00 vim
    
    $ kill -9 7243
    

更多示例：[4 Ways to Kill a Process – kill, killall, pkill, xkill](http://link.zhihu.com/?target=http%3A//www.thegeekstuff.com/2009/12/4-ways-to-kill-a-process-kill-killall-pkill-xkill/)

### 27\. rm


删除文件前先确认

    $ rm -i filename.txt
    

在文件名中使用shell的元字符会非常有用。删除文件前先打印文件名并进行确认

    $ rm -i file*
    

递归删除文件夹下所有文件，并删除该文件夹

    $ rm -r example
    

### 28\. cp


拷贝文件1到文件2，并保持文件的权限、属主和时间戳

    $ cp -p file1 file2
    

拷贝file1到file2，如果file2存在会提示是否覆盖

    $ cp -i file1 file2
    

### 29\. mv


将文件名file1重命名为file2，如果file2存在则提示是否覆盖

    $ mv -i file1 file2
    

注意如果使用-f选项则不会进行提示

-v会输出重命名的过程，当文件名中包含通配符时，这个选项会非常方便

    $ mv -v file1 file2
    

### 30\. cat


你可以一次查看多个文件的内容，下面的命令会先打印file1的内容，然后打印file2的内容

    $ cat file1 file2
    

-n命令可以在每行的前面加上行号

    $ cat -n /etc/logrotate.conf
    /var/log/btmp {
    missingok
    3	    monthly
    4	    create 0660 root utmp
    5	    rotate 1
    6 }
    

### 31\. mount


如果要挂载一个文件系统，需要先创建一个目录，然后将这个文件系统挂载到这个目录上

    # mkdir /u01
    
    # mount /dev/sdb1 /u01
    

也可以把它添加到fstab中进行自动挂载，这样任何时候系统重启的时候，文件系统都会被加载

    /dev/sdb1 /u01 ext2 defaults 0 2
    

### 32\. chmod


chmod用于改变文件和目录的权限

给指定文件的属主和属组所有权限(包括读、写、执行)

    $ chmod ug+rwx file.txt
    

删除指定文件的属组的所有权限

    $ chmod g-rwx file.txt
    

修改目录的权限，以及递归修改目录下面所有文件和子目录的权限

    $ chmod -R ug+rwx file.txt
    

更多示例：[7 Chmod Command Examples for Beginners](http://link.zhihu.com/?target=http%3A//www.thegeekstuff.com/2010/06/chmod-command-examples/)

### 33\. chown


chown用于改变文件属主和属组

同时将某个文件的属主改为oracle，属组改为db

    $ chown oracle:dba dbora.sh
    

使用-R选项对目录和目录下的文件进行递归修改

    $ chown -R oracle:dba /home/oracle
    

### 34\. passwd


passwd用于在命令行修改密码，使用这个命令会要求你先输入旧密码，然后输入新密码

    $ passwd
    

超级用户可以用这个命令修改其他用户的密码，这个时候不需要输入用户的密码

    # passwd USERNAME
    

passwd还可以删除某个用户的密码，这个命令只有root用户才能操作，删除密码后，这个用户不需要输入密码就可以登录到系统

    # passwd -d USERNAME
    

### 35\. mkdir


在home目录下创建一个名为temp的目录

    $ mkdir ~/temp
    

使用-p选项可以创建一个路径上所有不存在的目录

    $ mkdir -p dir1/dir2/dir3/dir4/
    

### 36\. ifconfig


ifconfig用于查看和配置Linux系统的网络接口

查看所有网络接口及其状态

    $ ifconfig -a
    

使用up和down命令启动或停止某个接口

    $ ifconfig eth0 up
    
    $ ifconfig eth0 down
    

更多示例：[Ifconfig: 7 Examples To Configure Network Interface](http://link.zhihu.com/?target=http%3A//www.thegeekstuff.com/2009/03/ifconfig-7-examples-to-configure-network-interface/)

### 37\. uname


uname可以显示一些重要的系统信息，例如内核名称、主机名、内核版本号、处理器类型之类的信息

    $ uname -a
    Linux john-laptop 2.6.32-24-generic #41-Ubuntu SMP Thu Aug 19 01:12:52 UTC 2010 i686 GNU/Linux
    

### 38\. whereis


当你不知道某个命令的位置时可以使用whereis命令，下面使用whereis查找ls的位置

    $ whereis ls
    ls: /bin/ls /usr/share/man/man1/ls.1.gz /usr/share/man/man1p/ls.1p.gz
    

当你想查找某个可执行程序的位置，但这个程序又不在whereis的默认目录下，你可以使用-B选项，并指定目录作为这个选项的参数。下面的命令在/tmp目录下查找lsmk命令

    $ whereis -u -B /tmp -f lsmk
    lsmk: /tmp/lsmk
    

### 39\. whatis


wathis显示某个命令的描述信息

    $ whatis ls
    ls		(1)  - list directory contents
    
    $ whatis ifconfig
    ifconfig (8)         - configure a network interface
    

### 40\. locate


locate命名可以显示某个指定文件（或一组文件）的路径，它会使用由updatedb创建的数据库

下面的命令会显示系统中所有包含crontab字符串的文件

    $ locate crontab
    /etc/anacrontab
    /etc/crontab
    /usr/bin/crontab
    /usr/share/doc/cron/examples/crontab2english.pl.gz
    /usr/share/man/man1/crontab.1.gz
    /usr/share/man/man5/anacrontab.5.gz
    /usr/share/man/man5/crontab.5.gz
    /usr/share/vim/vim72/syntax/crontab.vim
    

### 41\. man


显示某个命令的man页面

    $ man crontab
    

有些命令可能会有多个man页面，每个man页面对应一种命令类型

    $ man SECTION-NUMBER commandname
    

man页面一般可以分为8种命令类型

1.  用户命令
2.  系统调用
3.  c库函数
4.  设备与网络接口
5.  文件格式
6.  游戏与屏保
7.  环境、表、宏
8.  系统管理员命令和后台运行命令

例如，我们执行whatis crontab，你可以看到crontab有两个命令类型1和5，所以我们可以通过下面的命令查看命令类型5的man页面

    $ whatis crontab
    crontab (1)          - maintain crontab files for individual users (V3)
    crontab (5)          - tables for driving cron
    
    $ man 5 crontab
    

### 42\. tail


tail命令默认显示文件最后的10行文本

    $ tail filename.txt
    

你可以使用-n选项指定要显示的行数

    $ tail -n N filename.txt
    

你也可以使用-f选项进行实时查看，这个命令执行后会等待，如果有新行添加到文件尾部，它会继续输出新的行，在查看日志时这个选项会非常有用。你可以通过CTRL-C终止命令的执行

    $ tail -f log-file
    

更多示例：[3 Methods To View tail -f output of Multiple Log Files in One Terminal](http://link.zhihu.com/?target=http%3A//www.thegeekstuff.com/2009/09/multitail-to-view-tail-f-output-of-multiple-log-files-in-one-terminal/)

### 43\. less


这个命名可以在不加载整个文件的前提下显示文件内容，在查看大型日志文件的时候这个命令会非常有用

    $ less huge-log-file.log
    

当你用less命令打开某个文件时，下面两个按键会给你带来很多帮助，他们用于向前和向后滚屏

    CTRL+F – forward one window
    CTRL+B – backward one window
    

更多示例：[Unix Less Command: 10 Tips for Effective Navigation](http://link.zhihu.com/?target=http%3A//www.thegeekstuff.com/2010/02/unix-less-command-10-tips-for-effective-navigation/)

### 44\. su


su命令用于切换用户账号，超级用户使用这个命令可以切换到任何其他用户而不用输入密码

    $ su - USERNAME
    

用另外一个用户名执行一个命令下面的示例中用户john使用raj用户名执行ls命令，执行完后返回john的账号

    [john@dev-server]$ su - raj -c 'ls'
    
    [john@dev-server]$
    

用指定用户登录，并且使用指定的shell程序，而不用默认的

    $ su -s 'SHELLNAME' USERNAME
    

### 45\. mysql


mysql可能是Linux上使用最广泛的数据库，即使你没有在你的服务器上安装mysql，你也可以使用mysql客户端连接到远程的mysql服务器

连接一个远程数据库，需要输入密码

    $ mysql -u root -p -h 192.168.1.2
    

连接本地数据库

    $ mysql -u root -p
    

你也可以在命令行中输入数据库密码，只需要在-p后面加上密码作为参数，可以直接写在p后面而不用加空格

### 46\. yum


使用yum安装apache

    $ yum install httpd
    

更新apache

    $ yum update httpd
    

卸载/删除apache

    $ yum remove httpd
    

### 47\. rpm


使用rpm安装apache

    # rpm -ivh httpd-2.2.3-22.0.1.el5.i386.rpm
    

更新apache

    # rpm -uvh httpd-2.2.3-22.0.1.el5.i386.rpm
    

卸载/删除apache

    # rpm -ev httpd
    

更多示例：[RPM Command: 15 Examples to Install, Uninstall, Upgrade, Query RPM Packages](http://link.zhihu.com/?target=http%3A//www.thegeekstuff.com/2010/07/rpm-command-examples/)

### 48\. ping


ping一个远程主机，只发5个数据包

    $ ping -c 5 gmail.com
    

更多示例：[Ping Tutorial: 15 Effective Ping Command Examples](http://link.zhihu.com/?target=http%3A//www.thegeekstuff.com/2009/11/ping-tutorial-13-effective-ping-command-examples/)

### 49\. date


设置系统日期

    # date -s "01/31/2010 23:59:53"
    

当你修改了系统时间，你需要同步硬件时间和系统时间

    # hwclock –systohc
    
    # hwclock systohc –utc
    

### 50\. wget


使用wget从网上下载软件、音乐、视频

    $ wget http://prdownloads.sourceforge.net/sourceforge/nagios/nagios-3.2.1.tar.gz
    

下载文件并以指定的文件名保存文件

    $ wget -O taglist.zip http://www.vim.org/scripts/download_script.php?src_id=7701
    

更多示例：[The Ultimate Wget Download Guide With 15 Awesome Examples](http://link.zhihu.com/?target=http%3A//www.thegeekstuff.com/2009/09/the-ultimate-wget-download-guide-with-15-awesome-examples/)

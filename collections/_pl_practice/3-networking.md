---

title: Basics of Computer Networking
category: OTH
tags: Networking
date: 2012-2-6
---



## 概述

### OSI 分层（7 层）

- 物理层、数据链路层、网络层、运输层、会话层、表示层、应用层

### TCP/IP 分层（4 层）

- 网络接口层、网络层、运输层、应用层

### 五层协议（5 层）

- 物理层、数据链路层、网络层、运输层、应用层

### 五层结构的概述

1.  应用层：通过应用进程间的交互来完成特定网络应用

- 数据：报文
- 协议：HTTP, SMTP(邮件), FTP(文件传送)

2.  运输层：向两个主机进程之间的通信提供通用的数据传输服务。

- 数据：TCP:报文段，UDP:用户数据报
- 协议：TCP, UDP

3.  网络层：为分组交换网上的不同主机提供通信服务

- 数据：包或 IP 数据报
- 协议：IP

4.  数据链路层：

- 数据：帧

5.  物理层：

- 数据：比特

ARP 地址解析协议:用来获取目标 IP 地址所对应的 MAC 地址的

[各层协议](http://www.cnblogs.com/jiqianqian/p/6580422.html)

## 应用层

### 域名系统 DNS

例：某用户通过主机 A 浏览西安交大的主页 www.xjtu.edu.cn

1. A 向本地域名服务器 DNS 查询
2. 如果 DNS 上有 www.xjtu.edu.cn 的记录，就立即返回 IP 地址给主机 A
3. 如果 DNS 上没有该域名记录，则 DNS 向根域名服务器发出查询请求
4. 根域名服务器把负责 cn 域的顶级域名服务器 B 的 IP 地址告诉 DNS
5. DNS 向 B 查询获得二级域名服务器 C 的 IP 地址，最终迭代查询到 www.xjtu.edu.cn 的 ip 直接返回 DNS

#### HTTP

#### 请求报文

![请求报文](http://s2.51cto.com/wyfs02/M02/59/16/wKioL1THNfahGAkDAAFu--59S3M173.jpg)

- 常用的 HTTP 请求方法有 GET、POST、HEAD、PUT、DELETE、OPTIONS、TRACE、CONNECT;
- GET：当客户端要从服务器中读取某个资源时，使用 GET 方法。GET 方法要求服务器将 URL 定位的资源放在响应报文的部分，回送给客户端，即向服务器请求某个资源。使用 GET 方法时，请求参数和对应的值附加在 URL 后面，利用一个问号(“?”)代表 URL 的结尾与请求参数的开始，传递参数长度受限制。例如，/index.jsp?id=100&amp;op=bind。
- POST：当客户端给服务器提供信息较多时可以使用 POST 方法，POST 方法向服务器提交数据，比如完成表单数据的提交，将数据提交给服务器处理。GET 一般用于获取/查询资源信息，POST 会附带用户数据，一般用于更新资源信息。POST 方法将请求参数封装在 HTTP 请求数据中，以名称/值的形式出现，可以传输大量数据;
- 请求头部：请求头部由关键字/值对组成，每行一对，关键字和值用英文冒号“:”分隔。请求头部通知服务器有关于客户端请求的信息，典型的请求头有：

1.  User-Agent：产生请求的浏览器类型;
2.  Accept：客户端可识别的响应内容类型列表;星号 “_ ” 用于按范围将类型分组，用 “ */* ” 指示可接受全部类型，用“ type/_ ”指示可接受 type 类型的所有子类型;
3.  Accept-Language：客户端可接受的自然语言;
4.  Accept-Encoding：客户端可接受的编码压缩格式;
5.  Accept-Charset：可接受的应答的字符集;
6.  Host：请求的主机名，允许多个域名同处一个 IP 地址，即虚拟主机;
7.  connection：连接方式(close 或 keepalive);
8.  Cookie：存储于客户端扩展字段，向同一域名的服务端发送属于该域的 cookie;

```html
<pre
  class="prettyprint"
  name="code"
>`GET /search<span class="hljs-subst">?</span>hl<span class="hljs-subst">=</span>zh<span class="hljs-attribute">-CN</span><span class="hljs-subst">&amp;</span>source<span class="hljs-subst">=</span>hp<span class="hljs-subst">&amp;</span>q<span class="hljs-subst">=</span>domety<span class="hljs-subst">&amp;</span>aq<span class="hljs-subst">=</span>f<span class="hljs-subst">&amp;</span>oq<span class="hljs-subst">=</span> HTTP/<span class="hljs-number">1.1</span>  
Accept: image/gif, image/x<span class="hljs-attribute">-xbitmap</span>, image/jpeg, image/pjpeg, application/vnd<span class="hljs-built_in">.</span>ms<span class="hljs-attribute">-excel</span>, application/vnd<span class="hljs-built_in">.</span>ms<span class="hljs-attribute">-powerpoint</span>, 
application/msword, application/x<span class="hljs-attribute">-silverlight</span>, application/x<span class="hljs-attribute">-shockwave</span><span class="hljs-attribute">-flash</span>, <span class="hljs-subst">*</span><span class="hljs-comment">/*  
Referer: &lt;a href="http://www.google.cn/"&gt;http://www.google.cn/&lt;/a&gt;  
Accept-Language: zh-cn  
Accept-Encoding: gzip, deflate  
User-Agent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; TheWorld)  
Host: &lt;a href="http://www.google.cn"&gt;www.google.cn&lt;/a&gt;  
Connection: Keep-Alive  
Cookie: PREF=ID=80a06da87be9ae3c:U=f7167333e2c3b714:NW=1:TM=1261551909:LM=1261551917:S=ybYcq2wpfefs4V9g; 
NID=31=ojj8d-IygaEtSxLgaJmqSjVhCspkviJrB6omjamNrSm8lZhKy_yMfO2M4QMRKcH1g0iQv9u-2hfBW7bUFwVh7pGaRUb0RnHcJU37y-
FxlRugatx63JLv7CWMD6UB_O_r  </span>`

*   1
*   2
*   3
*   4
*   5
*   6
*   7
*   8
*   9
*   10
*   11
*   12</pre>
```

#### 响应报文

![相应报文](https://img-blog.csdn.net/20150126110634828?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvY2hlbmhhbnpodW4=/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center)

状态码由三位数字组成，第一位数字表示响应的类型，常用的状态码有五大类如下所示：

- 1xx：表示服务器已接收了客户端请求，客户端可继续发送请求;
- 2xx：表示服务器已成功接收到请求并进行处理;
- 3xx：表示服务器要求客户端重定向;
- 4xx：表示客户端的请求有非法内容;
- 5xx：表示服务器未能正常处理客户端的请求而出现意外错误;

**200** OK：表示客户端请求成功;

**400** Bad Request：表示客户端请求有语法错误，不能被服务器所理解;

**401** Unauthonzed：表示请求未经授权，该状态代码必须与 WWW-Authenticate 报头域一起使用;

**403** Forbidden：表示服务器收到请求，但是拒绝提供服务，通常会在响应正文中给出不提供服务的原因;

**404** Not Found：请求的资源不存在，例如，输入了错误的 URL;

**500** Internal Server

Error：表示服务器发生不可预期的错误，导致无法完成客户端的请求;

**503** Service Unavailable：表示服务器当前不能够处理客户端的请求，在一段时间之后，服务器可能会恢复正常;

响应头部：响应头可能包括：

- Location：Location 响应报头域用于重定向接受者到一个新的位置。例如：客户端所请求的页面已不存在原先的位置，为了让客户端重定向到这个页面新的位置，服务器端可以发回 Location 响应报头后使用重定向语句，让客户端去访问新的域名所对应的服务器上的资源;

- Server：Server 响应报头域包含了服务器用来处理请求的软件信息及其版本。它和 User-Agent 请求报头域是相对应的，前者发送服务器端软件的信息，后者发送客户端软件(浏览器)和操作系统的信息。

- Vary：指示不可缓存的请求头列表;

- Connection：连接方式;

1.  对于请求来说：close(告诉 WEB 服务器或者代理服务器，在完成本次请求的响应后，断开连接，不等待本次连接的后续请求了)。keepalive(告诉 WEB 服务器或者代理服务器，在完成本次请求的响应后，保持连接，等待本次连接的后续请求);

2.  对于响应来说：close(连接已经关闭); keepalive(连接保持着，在等待本次连接的后续请求); Keep-Alive：如果浏览器请求保持连接，则该头部表明希望 WEB 服务器保持连接多长时间(秒);例如：Keep-Alive：300;

- WWW-Authenticate：WWW-Authenticate 响应报头域必须被包含在 401 (未授权的)响应消息中，这个报头域和前面讲到的 Authorization 请求报头域是相关的，当客户端收到 401 响应消息，就要决定是否请求服务器对其进行验证。如果要求服务器对其进行验证，就可以发送一个包含了 Authorization 报头域的请求;

问题：

1. Http1.1 与 Http1.0 的区别

http1.0 使用非持久连接（短连接），而 http1.1 默认是持久连接（长连接），当然也可以配置成非持久连接。

[Cookie 和 Session 的作用和工作原理](http://blog.csdn.net/guoweimelon/article/details/50886092)

### FTP 文件传送协议

## <a name="t2"></a>运输层

- 使用 UDP 和 TCP 协议的各种应用和应用层协议

<table>
<thead>
<tr>
  <th>应用</th>
  <th>应用层协议</th>
  <th>运输层协议</th>
</tr>
</thead>
<tbody><tr>
  <td>名字转换</td>
  <td>DNS(域名系统)</td>
  <td>UDP</td>
</tr>
<tr>
  <td>文件传送</td>
  <td>TFTP(简单文件传送协议)</td>
  <td>UDP</td>
</tr>
<tr>
  <td>路由器选择协议</td>
  <td>RIP(路由信息协议)</td>
  <td>UDP</td>
</tr>
<tr>
  <td>IP地址配置</td>
  <td>DHCP(动态主机配置协议)</td>
  <td>UDP</td>
</tr>
<tr>
  <td>网络管理</td>
  <td>SNMP(简单网络管理协议)</td>
  <td>UDP</td>
</tr>
<tr>
  <td>远程服务器</td>
  <td>NFS(网络文件系统)</td>
  <td>UDP</td>
</tr>
<tr>
  <td>多播</td>
  <td>IGMP(网际组管理协议)</td>
  <td>UDP</td>
</tr>
<tr>
  <td>电子邮件</td>
  <td>SMTP(简单邮件传送协议)</td>
  <td>TCP</td>
</tr>
<tr>
  <td>远程终端</td>
  <td>TELNET(远程终端协议)</td>
  <td>TCP</td>
</tr>
<tr>
  <td>万维网</td>
  <td>HTTP(超文本传送协议)</td>
  <td>TCP</td>
</tr>
<tr>
  <td>文件传送</td>
  <td>FTP(文件传送协议)</td>
  <td>TCP</td>
</tr>
</tbody></table>

- 端口

TCP 和 UDP 都需要有**源端口**和**目的端口**

（端口：用 16 位来表示,即一个主机共有 65536 个端口.序号小于 256 的端口称为通用端口,如 FTP 是 21 端口,WWW 是 80 端口等.端口用来标识一个服务或应用.一台主机可以同时提供多个服务和建立多个连接.端口(port)就是传输层的应用程序接口.应用层的各个进程是通过相应的端口才能与运输实体进行交互.服务器一般都是通过人们所熟知的端口号来识别的）

服务端

常用的熟知端口

<table>
<thead>
<tr>
  <th>应用程序</th>
  <th>FTP</th>
  <th>TELNET</th>
  <th>SMTP</th>
  <th>DNS</th>
  <th>TFTP</th>
  <th>HTTP</th>
  <th>SNMP</th>
  <th>SNMP(trap)</th>
</tr>
</thead>
<tbody><tr>
  <td>熟知端口</td>
  <td>21</td>
  <td>23</td>
  <td>25</td>
  <td>53</td>
  <td>69</td>
  <td>80</td>
  <td>161</td>
  <td>162</td>
</tr>
</tbody></table>

登记端口 1024~49151

客户端

端口号由客户进程动态选择。数值范围 49152~65535

### UDP

#### 特点

1.  无连接的（发送数据之前不需要建立连接，因此减少了开销和发送数据之前的时延）
2.  尽最大努力交付（不保证可靠支付，因此主机不需要维持复杂的连接状态表）
3.  面向报文的（UDP 对应用层交下来的报文，添加完首部后就直接交付 IP 层。如果太长就会分片）
4.  UDP 没有拥塞控制
5.  UDP 支持一对一、一对多、多对一和多对多的交互通信
6.  UDP 的首部开销小（只有 8 个字节，TCP 有 20 个字节）

#### UDP 报文

![](https://img-blog.csdn.net/20140503103800703?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQveGlleXV0aWFuMTk5MA==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center)

- 源端口：2 字节 = 16bit = 0 ~ 65535

- 目的端口：2 字节

- 长度：2 字节

- 检验和：2 字节

如果接受方 UDP 发现收到的报文中的目的端口号不正确（不存在对应端口号的应用进程），就会丢弃报文，并有网际控制报文协议**ICMP**（ping 某个地址就是用的 ICMP）发送“端口不可达”差错报文给发送方。

UDP 用户数据报首部检验和计算时会在 UDP 用户数据报前增加 12 个字节的[伪首部](http://blog.csdn.net/jiangqin115/article/details/39315085)。

![UDP伪首部](http://life.chinaunix.net/bbsfile/forum/linux/month_1008/1008251147efc32457df32de33.jpg)

### TCP

#### 特点

1.  面向连接的运输层协议。
2.  点对点（一对一）通信。
3.  可靠交付。
4.  全双工通信（TCP 连接的两端都设有发送缓存和接收缓存，用来临时存放双向通信的数据）。
5.  面向字节流。

TCP 与 UDP 在发送报文时所采用的方式完全不同。TCP 具体发送的报文由接收方给出的窗口值和当前网络拥塞的程度来决定一个报文段包含多少字节。而 UDP 发送的报文长度由应用进程给出。

#### TCP 可靠传输工作原理

TCP 连接的端点叫做套接字(socket)或插口。套接字 socket = (IP 地址：端口号)

#### 停止等待协议

![无差错情况](https://img-blog.csdn.net/20160313194700419)

![超时重传](https://img-blog.csdn.net/20160313194706822)

每发送完一个分组就设置一个超时计时器。

- 注意：

1. 必须暂时保存已发送的分组的副本
2. 分组和确认分组都必须编号
3. 超市计时器设置的重传时间比数据在分组传输的平均时间更长一些

- 确认丢失和确认迟到

![确认丢失](https://img-blog.csdn.net/20160313195540266)

![确认迟到](https://img-blog.csdn.net/20160313194714900)

如果接收方接收到数据发送确认没有被发送方接收到，那么发送方超时后会重新发送分组，并且接收方收到重复的分组会丢弃并重传确认。

如果接收方收到的确认是已经接受过的，那么会无视这个确认。

#### 缺点

停止等待协议（自动重传 ARQ）虽然简单，但是信道利用率低。

![信道利用率](https://img-blog.csdn.net/20160313194720810)

信道利用率 U = TD / (TD + RTT + TA)

### 连续 ARQ 协议和滑动窗口协议

![连续ARQ协议](https://img-blog.csdn.net/20160313194725494)

![窗口](https://img-blog.csdn.net/20160313194734979)

#### TCP 报文格式

![TCP报文](http://img.my.csdn.net/uploads/201304/17/1366161483_3725.jpg)

1.  源端口和目的端口 各占 2 字节
2.  序号 4 字节
3.  确认号 4 字节期望收到对方下一个报文的第一个数据字节的序号
4.  数据偏移 4 位
5.  保留 6 字节
6.  紧急 URG 当 URG=1 表示紧急指针有效
7.  确认 ACK8. 推送 PSH
8.  复位 RST 当 RST = 1 时，释放连接并重新建立连接
9.  同步 SYN 当 SYN = 1 ACK = 0 时，表明这是一个连接请求报文段。
10. 终止 FIN FIN = 1，请求释放连接。
11. 窗口
12. 检验和
13. 紧急指针
14. 选项

#### TCP 的三次握手

![](http://dl2.iteye.com/upload/attachment/0108/8313/8352d9a8-8c91-32e5-adf8-2bdaf8d567d6.png)

1.  客户端 TCP 向服务端 TCP 发送一个特殊的 TCP 报文段，不包含应用层数据，报文中 SYN=1，设置一个初始号 client_isn,记录在报文段的序列号 seq 中。
2.  SYN 报文段到达服务器后，为该 TCP 链接分配缓存和变量，并向客户端发送允许链接的报文段。其中，SYN = 1， ACK = client_isn+1，seq = server_isn;
3.  客户端收到允许连接的报文后，客户端也给连接分配缓存和变量，客户端向服务端发送一个报文段，其中 ACK = server_isn+1，SYN = 0，并且由于连接已经建立所以现在可以携带应用层数据。

#### TCP 四次挥手

![](http://dl2.iteye.com/upload/attachment/0108/8315/51a9937d-3155-3a95-b853-97e8e20e758b.png)

1. 客户端发送连接释放报文段，报文中 FIN = 1, seq = u;
2. 服务端接收到连接释放报文后发出确认报文，其中 ACK = 1; seq = v; ack = u + 1;
3. 服务端在发送完数据后，发送连接释放报文 FIN = 1, seq = w, ack = u + 1;并停止向客户端发送数据。
4. 客户端收到连接释放报文后，发送确认报文， ACK = 1; seq = u + 1; ack = w + 1;并且进入等待 2MSL，防止服务端没有接收到确认报文，重传报文。并且使连接产生的报文都消失。

TCP 协议的连接是全双工连接，一个 TCP 连接存在双向的读写通道。

简单说来是 “先关读，后关写”，一共需要四个阶段。以客户机发起关闭连接为例：

1. 服务器读通道关闭
2. 客户机写通道关闭
3. 客户机读通道关闭
4. 服务器写通道关闭

#### TCP 拥塞控制

#### 拥塞控制和流量控制的区别

流量控制针对的是点对点之间的（发送方和接收方）之间的速度匹配服务，因为接收方的应用程序读取的速度不一定很迅速，而接收方的缓存是有限的，就需要避免发送的速度过快而导致的问题。拥塞控制是由于网络中的路由和链路传输速度限制，要避免网络的过载和进行的控制。

#### 拥塞控制算法

拥塞控制算法主要包含了三个部分：慢启动、拥塞避免和快速回复

![](http://blog.chinaunix.net/attachment/201310/28/26548237_1382949749LbOO.png)

1.  慢启动

慢开始算法的思路就是，不要一开始就发送大量的数据，先探测一下网络的拥塞程度，也就是说由小到大逐渐增加拥塞窗口的大小。一般一开始为 1 个 MSS，之后翻倍这样来增加，呈指数增长。其中 1、慢启动过程有一个阈值 ssthresh，一旦到达阈值就进入拥塞避免模式。这是第一种离开结束慢启动的方式 2、如果收到了一个丢包提示，就将 cwnd 设为 1 并且重新开始慢启动过程，这时要把阈值 ssthresh 设为当前 cwnd 值的一半。3、如果收到了三次冗余的 ACK，就执行一次快速重传并且进入快速恢复状态，这是最后一种结束慢启动的过程。

1.  拥塞避免

进入拥塞避免说明 cwnd 值大约是上一次遇到拥塞是的一半，这时候不能翻倍，而是将 cwnd 的值每次增加一个 MSS。结束的过程有两种可能：1、当出现超时时，将 cwnd 值设为 1 个 MSS，并且将 ssthresh 阈值设为当前 cwnd 值的一半。2、当收到三个冗余 ACK 时，将 ssthresh 阈值设为当前 cwnd 值的一半，并且将 cwnd 值设为当前 cwnd 值的一半加 3，即 ssthresh 阈值加 3，并且进入快速恢复状态。

1.  快速恢复

快速恢复就是指进入快速恢复前的一系列操作，即将 ssthresh 阈值设为当前 cwnd 值的一半，并且将 cwnd 值设为当前 cwnd 值的一半加 3，即 ssthresh 阈值加 3，之后进入拥塞避免状态，即每次 cwnd 的值加 1 个 MSS。

## <a name="t3"></a>网络层

### 协议

- 地址解析协议 ARP
- 网际控制报文协议 ICMP
- 网际组管理协议 IGMP

### IP

IP 地址分类：

- A 类:1.0.0.0~126.255.255.255,默认子网掩码/8,即 255.0.0.0 (其中 127.0.0.0~127.255.255.255 为环回地址,用于本地环回测试等用途)；

* B 类:128.0.0.0~191.255.255.255,默认子网掩码/16,即 255.255.0.0；
* C 类:192.0.0.0~223.255.255.255,默认子网掩码/24,即 255.255.255.0；
* D 类:224.0.0.0~239.255.255.255,一般于用组播
* E 类:240.0.0.0~255.255.255.255(其中 255.255.255.255 为全网广播地址),E 类地址一般用于研究用途

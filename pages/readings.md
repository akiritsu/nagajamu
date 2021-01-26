---
title: 阅读资料
---

## 免责声明

本网站所提供的信息，只供个人练习、参考之用。禁止以任何形式传播、下载、持有本网站之任何资源。
<br>
因任何形式通过本网站对原作者进行侵权的行为，所有责任由传播者承担，本网站及其持有者不承担任何责任。
<br>
本网站所有资源来源于网络，并且无法鉴别所上传图片或文字的知识版权，如果侵犯，请及时通知我们，本网站将在第一时间及时删除。

## Readings

{% for post in site.readings %}
<p>
    <a class="a_title" style="text-decoration: none" href="{{site.url}}{{site.baseurl}}{{post.url}}">{{post.title}} - {{post.author}}</a>
</p>
{% endfor %}

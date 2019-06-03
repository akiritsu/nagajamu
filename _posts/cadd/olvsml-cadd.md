---
layout: post
title: 使用OL技术进行虚拟筛选先导化合物的可行性分析及开发路线
date: 2019-5-21
---


## 优化学习和机器学习的对比

Optimal Learning：
* 优势：
  * 学习样本数据量要求小
  * 可以指导最优实验方案的设计，以尽可能多地提高获取的信息量
  * 迭代演化的学习模型（online learning）
* 劣势：
  * 没有高效实现的算法库
  * 没有工业实践先例

传统Machine Learning：
* 优势and劣势：我不懂，谢谢

技术路线：
1. 使用MOLTE环境->demo阶段，验证
2. 自主开发->提高效率和并发能力，以及在虚拟筛选中的应用
* 多种化合物模型？（而不是简单的Free-Wilson Model)
* 捆绑Scoring函数？(调查和实现)
* 高效的bitwise的实现？Challeged
* 并发学习？Challeged
3. 完整的Integral Environment?
4. 优化其知识管理方法和结构？
* 如何优化knowledge gradient在CADD中的管理？
* 生成contraint-based database？
---
title: An Overview of Machine Learning and Deep Learning
---


## 机器学习

### 学习方法概述[^1]

1. 掌握基础的**Python**编程技术
2. 通过公开课视频、书籍、笔记等学会机器学习的**基础概念**
3. 了解并使用科学计算Python**软件包**
* 如numpy，pandas，matplotlib，scikit-learn
4. 使用 Python 机器学习标准库scikit-learn**实现**机器学习**基本算法**
* 如K-均值聚类，决策书，线性回归，逻辑回归
5. 实现稍微复杂的机器学习算法
* 如支持向量机，随机森林，降维算法
6. 学习进阶算法并在工作学习中应用
* 分类算法：K-最近邻，多层感知器（MLP），监督式神经网络
* 聚类算法：DBSCAN，期望最大化（EM）
* 集成方法，包装，提升，投票
* 梯度提升（可以使用XGBoost库）
* 降维：特种选择，特征提取（[主成分分析](http://sebastianraschka.com/Articles/2015_pca_in_3_steps.html)，[线性判别分析](http://sebastianraschka.com/Articles/2014_python_lda.html)）
* 深度学习，使用Tensorflow（简介：[[1]](https://mp.weixin.qq.com/s?__biz=MzA3MzI4MjgzMw==&mid=2650718466&idx=1&sn=016f111001e8354d49dd4ce279d283cd&scene=21#wechat_redirect)[[2]](https://mp.weixin.qq.com/s?__biz=MzA3MzI4MjgzMw==&mid=2650723520&idx=1&sn=d204284574e9e56682b6ed6f9dcaff01&chksm=871b10beb06c99a8ccb990b5299b4a2b2c6b7bdcf2b21813f294ed09c838f7ff03e94191c682&scene=21#wechat_redirect)），卷积神经网络，循环神经网络


### 简单入门机器学习
**适合人群**：
* 计算机或英语、数学基础较差者
* 机器学习入门从业者
* 使用机器学习技术的其他行业从业者
 
**教材**：机器学习，周志华（西瓜书）
* 辅助资料：西瓜书公式解析：[Github](https://github.com/datawhalechina/pumpkin-book)
  
**视频课程**：机器学习，吴恩达（Coursa版）：[bilibili](https://www.bilibili.com/video/av9912938)
* 辅助资料：
  * 课程笔记：[PDF下载]({{site.notes}}/ml/notes/ai-start-notes-v5.4.pdf)
  * 数学基础总结：[PDF下载]({{site.baseurl}}/ml/notes/ai-start-math-foundations.pdf)


### 普通入门机器学习
**适合人群**：
* 普通计算机专业学生
* 普通机器学习算法工程师

**教材**：Machine Learning Yearning，吴恩达，[GitBook在线阅读](https://github.com/AcceptedDoge/machine-learning-yearning-cn/)

**视频课程**：机器学习，吴恩达（斯坦福大学CS229）：[bilibili](https://www.bilibili.com/video/av29430384)
* 辅助资料：
  * CS229知识总结表：[监督学习](https://github.com/afshinea/stanford-cs-229-machine-learning/blob/master/zh/cheatsheet-supervised-learning.pdf)，[无监督学习](https://github.com/afshinea/stanford-cs-229-machine-learning/blob/master/zh/cheatsheet-unsupervised-learning.pdf)，[深度学习](https://github.com/afshinea/stanford-cs-229-machine-learning/blob/master/zh/cheatsheet-deep-learning.pdf)，[机器学习技巧和秘诀](https://github.com/afshinea/stanford-cs-229-machine-learning/blob/master/zh/cheatsheet-machine-learning-tips-and-tricks.pdf)，[概率和统计](https://github.com/afshinea/stanford-cs-229-machine-learning/blob/master/zh/refresher-probabilities-statistics.pdf)，[线性代数和微积分](https://github.com/afshinea/stanford-cs-229-machine-learning/blob/master/zh/refresher-algebra-calculus.pdf)
* 相关数学基础：
  * 线性代数：矩阵/张量乘法、求逆，奇异值分解/特征值分解，行列式，范数等；
  * 统计与概率：概率分布，独立性与贝叶斯，最大似然(MLE)和最大后验估计(MAP)等；
  * 信息论：基尼系数，熵(Entropy)等；
  * 优化：线性优化，非线性优化(凸优化/非凸优化)以及其衍生的求解方法如梯度下降、牛顿法、基因算法和模拟退火等；
  * 数值计算：上溢与下溢，平滑处理，计算稳定性(如矩阵求逆过程)；
  * 微积分：偏微分，链式法则，矩阵求导等

**进阶教材**（从易到难）：

* [Pattern Recognition and Machine Learning（免费电子书）](https://www.microsoft.com/en-us/research/uploads/prod/2006/01/Bishop-Pattern-Recognition-and-Machine-Learning-2006.pdf)
  * MATLAB代码：[Github](http://prml.github.io/)
  * Python代码：[Github](https://github.com/ctgk/PRML)
* Element of Statistical Learning
* Machine Learning: A Probability Perspective
  * 中文读书笔记：[在线阅读](https://kivy-cn.github.io/MLAPP-CN/#/)


## 速查手册

### 机器学习算法分类

![mlc](http://thinkbigdata.in/wp-content/uploads/2016/04/Best_Machine_Learning_Algorithms.jpg)

### 机器学习算法介绍及优劣势分析

![tpa](https://blog.dataiku.com/hs-fs/hubfs/Top%20Prediction%20Algorithms.jpg?width=1026&height=1452&name=Top%20Prediction%20Algorithms.jpg)

### 机器学习的算法的Python&R代码
[PDF版本](http://discuss.analyticsvidhya.com/t/download-full-cheatsheet-on-machine-learning-algorithms/4063/1)
![code-python](https://www.analyticsvidhya.com/wp-content/uploads/2015/09/1.jpg)

### Python语言基础语法
[PDF版本](http://datasciencefree.com/python.pdf)

### Numpy
[PDF版本](https://s3.amazonaws.com/dq-blog-files/numpy-cheat-sheet.pdf)

[NumPy基础使用PDF](https://s3.amazonaws.com/assets.datacamp.com/blog_assets/Numpy_Python_Cheat_Sheet.pdf)
### Pandas
[PDF版本](http://datasciencefree.com/pandas.pdf)

[Pandas基础使用PDF](https://s3.amazonaws.com/assets.datacamp.com/blog_assets/PandasPythonForDataScience.pdf)

### Matplotlib
[Matplotlib基础使用PDF](https://s3.amazonaws.com/assets.datacamp.com/blog_assets/Python_Matplotlib_Cheat_Sheet.pdf)

### Scikit-learn
[Scikit-learn基础使用PDF](https://s3.amazonaws.com/assets.datacamp.com/blog_assets/Scikit_Learn_Cheat_Sheet_Python.pdf)

### 数据科学速查手册。
[Github](https://github.com/FavioVazquez/ds-cheatsheets)

主要内容：
* Business Science
* Python
* R
* Math and Calculus
* Big Data
* Machine Learning
* Deep Learning
* SQL
* Data Visualization
* Data Science in General and Others

### 数学基础（概率论，统计，微积分，线代）
[概率论PDF](https://static1.squarespace.com/static/54bf3241e4b0f0d81bf7ff36/t/55e9494fe4b011aed10e48e5/1441352015658/probability_cheatsheet.pdf)

[线性代数PDF](https://minireference.com/static/tutorials/linear_algebra_in_4_pages.pdf)

[概率论PDF](http://web.mit.edu/~csvoss/Public/usabo/stats_handout.pdf)

[概率论Download](http://tutorial.math.lamar.edu/getfile.aspx?file=B%2c41%2cN)

### 深度学习架构及解析
![dla](http://www.asimovinstitute.org/wp-content/uploads/2019/04/NeuralNetworkZoo20042019-1400x2380.png)
解析：[asimovinstitute.org](http://www.asimovinstitute.org/neural-network-zoo/)

## 研究动态和论文收集

1. **Deep Learning 十年来所有顶会的优秀论文和论文复现代码**：https://github.com/zziz/pwc
2. Machine Learning Systems
3. [神经逻辑机](https://zhuanlan.zhihu.com/p/64244297)
4. [元学习论文集Github](https://github.com/floodsung/Meta-Learning-Papers)
5. [深度学习论文分类Github](https://github.com/ybj14/Deep-Learning-Papers-Reading-Roadmap)

## 附录A：基础编程

计算机科学和Python编程导论，MIT：[bilibili](https://www.bilibili.com/video/av27987738)

## 附录B：算法

1. 初学看《算法图解》获得基础认识，之后选择性观看《算法（第四版）》
2. 请**配合代码学习**，这里可以找到使用Python语言实现的常见算法：[Github](https://github.com/TheAlgorithms/Python)
3. 之后可以适度研究机器学习和深度学习算法的原理

## 引用：

[^1]: https://zhuanlan.zhihu.com/p/25761248
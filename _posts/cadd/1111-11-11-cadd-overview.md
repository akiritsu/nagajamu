---
layout: post
title: An Overview of Computer Aided Drug Design and Intelligentized Virtual Screening
category: CADD
tags: VS CADD AI Overview
date: 2019-5-14
---

* content
{:toc}

**声明：本网站是DeerRIDER私有笔记网站，不对外公开，无法被搜索引擎收取，不包含任何非法信息和商业机密。**

## Progress

COMPELETED:
* [2019-5-15-药物研发基础：虚拟筛选和人工智能的应用]({{site.baseurl}}/intro-cadd)
  * 基于分子相似性的虚拟筛选，分子指纹，虚拟筛选案例，骨架跃迁，同源建模，CADD技术汇总，深度学习的应用
* [2019-5-16-资料汇集：人工智能计算方法学，虚拟筛选和开源数据库]({{site.baseurl}}/research-rsc)

ONGOING:
* [2019-5-23-细胞生物学基础及线粒体]({{site.baseurl}}/cytobiology)

TODO:



## 大局观及导图

> 语义化思维导图：G：目标 P：问题 S：方案 E：特殊情况 A：主体人员和团体

G:鉴别有制药潜力的先导化合物
P-传统筛选方法效率不足及化合物分子多样性
- PS-Computer Aided Screening
  - P1-化合物表示法和数据库？
    - P12-化合物表示法，1-3 维
    - P12-S-SMILE, Graph, Matrix, Connective Talbes
    - P12-E-免费生物学信息库:FCD,ACD,CSD
  - P2-搜索方法
    - P21-小分子搜索的生物化学基础？
    - P21-S1-靶点对接: 靶点预处理+数据库预处理+分子对接+打分
    - P21-S2-基于配体相似性的筛选
      - P21-S21-二维子结构或相似性筛选
        - P21-S21E-快速但容易假阳性
      - P21-S22-三维药效基团搜寻
    - P21-S3-反向筛选（通过小分子搜寻靶点库）：对接计算 or 药效基团
    - P22-计算机辅助方法？
      - P22-S1-基于统计学的软计算方法
        - P22-S11-机器学习（泛用）
        - P22-S12-深度学习（泛用）
        - P22-S13-最优化学习（研究验证）[^2] [^7]
        - P22-S14-深度强化学习（早期实现）
      - P22-S2-基于知识的表征和推理[^1] [^6]
        - P22-S21-Fuzzy Modelling（生物信息学理论）[^9]
        - P22-S22-高维数据的特征提取（基础理论）[^10]
      - P22-S3-约束空间的搜索和推理（生物信息学理论）[^3] [^8]
      - P22-S4-传统搜索算法
        - P22-S41-遗传算法（应用）
        - P22-S42-蒙特卡罗搜索树（应用）
        - P22-S43-待补充

## DeerRIDER 的个人思路：
- Knowledge-based reasoning and inference， 已验证应用[^1] [^6]
- Optimal Learning， 充分验证应用[^2] [^7]，效果显著
- Constraint-based reasoning and modeling，部分验证于抗菌剂[^3]
- Knowledge-based虚拟筛选模型再应用ML，剽窃自 schrodinger 的应用科学家，无应用验证，但该技术有一些理论性资料[^4]
- Fuzzy Modelling，存在生物信息学中的建模应用，基于 Fuzzy Logic[^9]
- Feature Selection of High-Dimensional Data，存在 Drug Discovery 的应用场景
- Contraint-Based Bioinformatics，存在Drug Design的应用场景[^8]
- 其他未形成应用的数据科学方法？

## References

[^1]: Ghose, A. K., Herbertz, T., Pippin, D. A., Salvino, J. M., & Mallamo, J. P. (2008). Knowledge based prediction of ligand binding modes and rational inhibitor design for kinase drug discovery. Journal of medicinal chemistry, 51(17), 5149-5171.
[^2]: Frazier, D. M. N. P. I. (2009). Optimal Learning for Drug Discovery in Ewing’s Sarcoma.
[^3]: Trawick, John & H Schilling, Christophe. (2006). Use of constraint-based modeling for the prediction and validation of antimicrobial targets. Biochemical pharmacology. 71. 1026-35. 10.1016/j.bcp.2005.10.049.
[^4]: Towell, G. G., & Shavlik, J. W. (1994). Knowledge-based artificial neural networks. Artificial intelligence, 70(1-2), 119-165
[^5]: 知乎问答：www.zhihu.com/question/68043513
[^6]: Ghose, A. K., Viswanadhan, V. N., & Wendoloski, J. J. (1999). A knowledge-based approach in designing combinatorial or medicinal chemistry libraries for drug discovery. 1. A qualitative and quantitative characterization of known drug databases. Journal of combinatorial chemistry, 1(1), 55-68.
[^7]: Negoescu, D. M., Frazier, P. I. & Powell, W. B. (2011), 'The Knowledge-Gradient Algorithm for Sequencing Experiments in Drug Discovery', INFORMS Journal on Computing 23(3), 346-363.
[^8]: Rossi, F., Van Beek, P., & Walsh, T. (Eds.). (2006). Handbook of constraint programming. Elsevier.
[^9]: Reghunadhan, R., & Arulmozhi, V. (2013). FUZZY LOGIC FOR CHEMOINFORMATICS--A REVIEW. Journal of Theoretical & Applied Information Technology, 47(1).
[^10]: Verónica bolón-canedo , Amparo alonso-betanzos & noelia sánchez-maroño. (2015). Feature Selection for High-Dimensional Data.


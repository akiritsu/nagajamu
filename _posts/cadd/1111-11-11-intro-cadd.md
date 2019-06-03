---
layout: post
title: Introduction to Computer-aided Drug Design, Virtual Screening and Intelligentized Methods
category: CADD
tags: VS AI
date: 2019-5-15
---

* content
{:toc}


## 线粒体功能及与疾病的关系

**线粒体功能的研究背景**

线粒体除了作为细胞内能量生成的关键细胞器，还参与细胞凋亡、自由基生产、脂质代谢等代谢过程。一些研究报道指出，线粒体功能异常会导致许多常见疾病的病理，包括神经退化、代谢疾病,心脏衰竭，缺血再灌注损伤和原生动物的感染等。因此，线粒体是这些高度流行疾病的一个重要药物靶点。一些旨在治疗性恢复线粒体功能的策略正在出现，少数药物已进入临床试验。

**线粒体与疾病的关系**

再灌注损伤 当流向器官的血液被打断时，就会发生缺血，使器官失去氧气和外部代谢物的供应，导致乳酸、琥珀酸的堆积。此时含氧血液再灌注入器官，会导致琥珀酸氧化，产生 ROS，致使氧化损伤。且同时 ROS 与线粒体内富集的 Ca2+共同作用于 MTPTP，会致使线粒体肿胀，细胞死亡，从而引发炎症（如下图）。

因此，减缓再灌注损伤有以下方案：在缺血时，预防琥珀酸积累；在再灌注时，避免琥珀酸氧化，减少 ROS 生成，或添加氧化剂，避免氧化损伤；及再灌注后，注射阻断 MPTP 通路相关药物，避免细胞死亡，或直接注射抗炎药物等方式，防治再灌注损伤。但是应用于临床结果令人失望，分析其原因可能是动物实验使用的模型过于年轻，缺乏老年人，不健康患者的相关共性。或是患者同时服用多种药物，与被检测药物可能效果相似，导致无法正确评估药效。还有可能是治疗前缺血时间太长或太短，影响判断结果。另外，CSA 药物进入线粒体速度太慢，无法阻止细胞损伤，需要迅速给药。

![](https://pic3.zhimg.com/v2-869d7427978c40e7c011c96cee01a2f2_b.jpg)

![](https://pic3.zhimg.com/80/v2-869d7427978c40e7c011c96cee01a2f2_hd.jpg)

线粒体功能及相关病理（来自文献）

**肥胖** 减肥是一个相当热门的话题，通过线粒体，促进脂肪代谢来提供能量，能够有效的治疗肥胖。细胞的线粒体中会产生[三磷酸腺苷](https://link.zhihu.com/?target=https%3A//www.baidu.com/s%3Fwd%3D%25E4%25B8%2589%25E7%25A3%25B7%25E9%2585%25B8%25E8%2585%25BA%25E8%258B%25B7%26tn%3DSE_PcZhidaonwhc_ngpagmjz%26rsv_dl%3Dgh_pc_zhidao%2522%2520%255Ct%2520%2522https%3A//zhidao.baidu.com/question/_blank)（ATP）分子，它能够为身体提供能量。20 世纪 30 年代曾经流行过一种减肥药——2,4-二[硝基苯酚](https://link.zhihu.com/?target=https%3A//www.baidu.com/s%3Fwd%3D%25E7%25A1%259D%25E5%259F%25BA%25E8%258B%25AF%25E9%2585%259A%26tn%3DSE_PcZhidaonwhc_ngpagmjz%26rsv_dl%3Dgh_pc_zhidao%2522%2520%255Ct%2520%2522https%3A//zhidao.baidu.com/question/_blank)（DNP），它会阻断这一过程，导致线粒体产生热量而非 ATP，并促使细胞代谢碳水化合物和脂肪。后来多人由于过热死亡，DNP 在 1938 年被废止使用。近来有研究发现，DNP 甲基醚能在肝脏中被代谢为 DNP，从而减少脂肪肝与高血脂的症状。

**胰岛素耐受** 即不能正常降低血糖。可以通过线粒体为靶点的治疗手段有：使用二甲双胍，抑制氧化磷酸化过程中的复合物 I，使 ADP:ATP 的比值上调，从而激活 AMPK，延缓肝脏糖异生的反应；通过 NMN，使 NAD+水平上调，改善 II 型糖尿病；通过减少线粒体 ROS 的生成，或使用抗氧化剂，恢复胰岛素，且减少糖尿病并发症。

**高血压** 线粒体内的超氧化物与血管舒张剂 NO 反应，导致血管收缩，造成高血压；或 ROS 导致细胞外弹性蛋白酶被氧化损伤，从而会导致高血压。有研究表明，利用抗氧化剂 MitoQ 有望通过阻止 ROS 损伤来治疗高血压。

**脂肪肝** 非酒精性脂肪肝（NAFLD）是与肥胖相关的疾病，NAFLD 的治疗选择有限，肝移植是肝硬化的唯一可能。但脂肪在肝脏的积累是 NAFLD 的关键驱动因素，这可以通过 DNP 衍生物诱导肝内线粒体选择性解耦从而增强线粒体脂肪氧化从而解决。此外，线粒体损伤与 NAFLD 的发展密切相关，氧化应激升高，NAD+耗竭。可通过抗氧化剂 MitoQ 及 NMN 补充 NAD+，作为一种治疗手段。

**神经衰退型疾病** 亨廷顿病、家族性帕金森病、阿尔茨海默病、肌萎缩性脊髓侧索硬化症等疾病被认为是与线粒体损伤相关的疾病。许多类型的线粒体功能障碍与神经退行性变有关，包括氧化损伤、ATP 合成缺陷、NAD+耗尽、线粒体动力学和质量控制受限、钙稳态紊乱。可以通过对这些方面的调节作为一种治疗手段。

已有大量的动物和人类数据表明，**靶向线粒体是一种减缓神经退行性疾病进展的良好策略。**但运用于临床是失败的，导致治疗失败的一个可能因素是，当神经退行性疾病的患者被招募参加临床试验时，已经是晚期，无法治疗。而在许多动物研究中，治疗是在临床出现明显症状之前进行的。并且与此相关的许多神经退行性疾病过程可能构成一个恶性循环，一旦细胞损伤开始，其他因素，如炎症和血管损伤，都会导致一系列的反应。因此，当疾病出现症状时，在线粒体水平进行干预可能已经太晚了。

**视网膜功能性障碍** 视网膜感光细胞(RPCs)受损或丧失是西方国家最常见的视力丧失原因，依赖于氧化磷酸化和高水平的氧化应激使视网膜非常容易受到线粒体功能障碍的影响，这表明专注于这个细胞器的治疗是有益于视网膜功能性障碍的改善的。动物模型的研究结果支持了这一观点，即 RPC 死亡与 NAD+耗竭有关，导致 SIRT3 活性下降， 通过 NMN 补充 NAD+能减少这种细胞的损失。

**心力衰竭（HF）** 心脏供血需要能量，它依靠线粒体 ATP 的产生来驱动心肌细胞收缩，并重新分配释放的钙来启动这一过程。因此，线粒体功能障碍是心衰的一个关键组成部分。导致心力衰竭与线粒体功能障碍相关的因素有多种，但 ROS 的产生升高、氧化损伤、线粒体生物发生缺陷是最为常见的，机制尚不清楚，且通过抗氧化剂的临床效果不佳。寄希望于保护线粒体或增加线粒体作为目标的治疗，是未来发展的领域。

**寄生虫** 原生动物感染导致了许多医学、社会和经济上的重要疾病，包括疟疾、布鲁氏锥虫和查加斯病(克鲁兹锥虫)。由于缺乏疫苗、药物毒性和出现耐药性，研制治疗这类寄生虫病的新疗法是一个迫切需要得到满足的领域。原生动物线粒体是一个有吸引力的药物靶点，因为它们的线粒体不仅对生存至关重要，而且与哺乳动物宿主的线粒体也有很大的不同。

**由于恶性疟原虫缺乏嘧啶挽救途径，它们依赖于线粒体 DHODH 途径生产嘧啶，因此，DHODH 本身就是一个潜在的药物靶点。然而另外一个药物靶点**，Atovaquone 在细胞色素 bc1 复合物上的结合位点，位于线粒体 DNA 上，因此容易发生氧化损伤和基因突变，从而使寄生虫容易获得抗性。所以通过抑制 ND2，位于核基因组上的编码蛋白，作为靶点治疗效果更好。

锥虫的线粒体是一个很有吸引力的药物靶点，因为它们有不同的代谢模式，这取决于宿主和生命周期的阶段，并且与人类线粒体不同。寄生虫感染的人血液的阶段是依赖糖酵解产生 ATP，它包含一个线粒体，该线粒体具有一个非常规的呼吸链，对于从 NADH 再生 NAD+以维持糖酵解至关重要，而人体内 AOX 的缺乏使其成为一个有吸引力的药物靶点（如下图）。

![](https://pic2.zhimg.com/v2-1ab8efc9be88ec28585739284c926a9d_b.jpg)

![](https://pic2.zhimg.com/80/v2-1ab8efc9be88ec28585739284c926a9d_hd.jpg)

线粒体作为寄生虫疾病的治疗靶点（来自文献）

**线粒体的功能介绍**

**能量转化** 线粒体是真核生物进行氧化代谢的部位，是糖类、脂肪和[氨基酸](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E6%25B0%25A8%25E5%259F%25BA%25E9%2585%25B8%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)最终氧化释放能量的场所。线粒体负责的最终氧化的共同途径是三羧酸循环与[氧化磷酸化](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E6%25B0%25A7%25E5%258C%2596%25E7%25A3%25B7%25E9%2585%25B8%25E5%258C%2596%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)，分别对应[有氧呼吸](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E6%259C%2589%25E6%25B0%25A7%25E5%2591%25BC%25E5%2590%25B8%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)的第二、三阶段。细胞质基质中完成的[糖酵解](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E7%25B3%2596%25E9%2585%25B5%25E8%25A7%25A3%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)和在线粒体基质中完成的三羧酸循环在会产[还原型烟酰胺腺嘌呤二核苷酸](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E8%25BF%2598%25E5%258E%259F%25E5%259E%258B%25E7%2583%259F%25E9%2585%25B0%25E8%2583%25BA%25E8%2585%25BA%25E5%2598%258C%25E5%2591%25A4%25E4%25BA%258C%25E6%25A0%25B8%25E8%258B%25B7%25E9%2585%25B8%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)（reduced nicotinarnide adenine dinucleotide，NADH）和[还原型黄素腺嘌呤二核苷酸](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E8%25BF%2598%25E5%258E%259F%25E5%259E%258B%25E9%25BB%2584%25E7%25B4%25A0%25E8%2585%25BA%25E5%2598%258C%25E5%2591%25A4%25E4%25BA%258C%25E6%25A0%25B8%25E8%258B%25B7%25E9%2585%25B8%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)（reduced flavin adenosine dinucleotide，FADH2）等高能分子，而氧化磷酸化这一步骤的作用则是利用这些物质还原[氧气](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E6%25B0%25A7%25E6%25B0%2594%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)释放能量合成 ATP。在有氧呼吸过程中，1 分子葡萄糖经过糖酵解、三羧酸循环和氧化磷酸化将能量释放后，可产生 30-32 分子 ATP（考虑到将 NADH 运入线粒体可能需消耗 2 分子 ATP）。如果细胞所在环境缺氧，则会转而进行无氧呼吸。此时，糖酵解产生的丙酮酸便不再进入线粒体内的三羧酸循环，而是继续在细胞质基质中反应（被 NADH 还原成乙醇或乳酸等[发酵](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E5%258F%2591%25E9%2585%25B5%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)产物），但不产生 ATP。所以在无氧呼吸过程中，1 分子葡萄糖只能在第一阶段产生 2 分子 ATP。

**三羧酸循环** 糖酵解中生成的每分子[丙酮酸](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E4%25B8%2599%25E9%2585%25AE%25E9%2585%25B8%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)会被[主动运输](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E4%25B8%25BB%25E5%258A%25A8%25E8%25BF%2590%25E8%25BE%2593%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)转运穿过线粒体膜。进入线粒体基质后，丙酮酸会被氧化，并与[辅酶 A](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E8%25BE%2585%25E9%2585%25B6A%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)结合生成 CO2、[还原型辅酶 Ⅰ](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E8%25BF%2598%25E5%258E%259F%25E5%259E%258B%25E8%25BE%2585%25E9%2585%25B6%25E2%2585%25A0%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)和[乙酰辅酶 A](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E4%25B9%2599%25E9%2585%25B0%25E8%25BE%2585%25E9%2585%25B6A%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)。乙酰辅酶 A 是三羧酸循环（也称为“柠檬酸循环”或“Krebs 循环”）的初级底物。参与该循环的酶除位于线粒体内膜的[琥珀酸脱氢酶](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E7%2590%25A5%25E7%258F%2580%25E9%2585%25B8%25E8%2584%25B1%25E6%25B0%25A2%25E9%2585%25B6%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)外都游离于线粒体基质中。在三羧酸循环中，每分子乙酰辅酶 A 被氧化的同时会产生起始电子传递链的还原型辅因子（包括 3 分子 NADH 和 1 分子 FADH2）以及 1 分子[三磷酸鸟苷](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E4%25B8%2589%25E7%25A3%25B7%25E9%2585%25B8%25E9%25B8%259F%25E8%258B%25B7%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)（GTP）。

**氧化磷酸化** NADH 和 FADH2 等具有还原性的分子在电子传递链里面经过几步反应最终将氧气还原并释放能量，其中一部分能量用于生成 ATP，其余则作为热能散失。在线粒体内膜上的酶复合物（NADH-泛醌还原酶、泛醌-细胞色素 c 还原酶、[细胞色素 c 氧化酶](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E7%25BB%2586%25E8%2583%259E%25E8%2589%25B2%25E7%25B4%25A0c%25E6%25B0%25A7%25E5%258C%2596%25E9%2585%25B6%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)）利用过程中释放的能量将质子逆浓度梯度泵入线粒体膜间隙。虽然这一过程是高效的，但仍有少量电子会过早地还原氧气，形成[超氧化物](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E8%25B6%2585%25E6%25B0%25A7%25E5%258C%2596%25E7%2589%25A9%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)等[活性氧](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E6%25B4%25BB%25E6%2580%25A7%25E6%25B0%25A7%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)（ROS），这些物质能引起[氧化应激反应](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E6%25B0%25A7%25E5%258C%2596%25E5%25BA%2594%25E6%25BF%2580%25E5%258F%258D%25E5%25BA%2594%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)使线粒体性能发生衰退。在此过程中产生的 ROS 和一些中间代谢物可作为线粒体的信号，调节相关下游反应；ROS 也可能会对线粒体造成氧化损伤；**ROS 与线粒体内富集的 Ca2+共同作用于 MTPTP,会致使线粒体肿胀，细胞死亡。**

氧化磷酸化代谢过程中的 Cytochrome c 与细胞凋亡相关。途径大体为：细胞受到凋亡信息刺激后，BH-3 only 亚族蛋白和 Bax 亚族蛋白相互作用，促使 Bax 亚族蛋白寡聚化，并进入线粒体，促使线粒体释放 Cytochrome c 和 Smac/DIABLO 至胞质中，其中 Cytochrome c 与胞质中的 Apaf-1、ATP/dATP、pro-caspase9 结合，形成一个 700~1400kDa，具有很强 caspase 酶激活活性的大分子蛋白复合物，称为凋亡体，它激活 caspase-9 后，依次激活下游的 caspase-3 及其他效应 caspase，引起凋亡。凋亡不完全是一个线性通路，各凋亡信号分子间相互影响，相互作用，从而有效的调节整个凋亡过程。

**储存钙离子** 线粒体可以储存钙离子，可以和内质网、[细胞外基质](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E7%25BB%2586%25E8%2583%259E%25E5%25A4%2596%25E5%259F%25BA%25E8%25B4%25A8%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)等结构协同作用，从而控制细胞中的钙离子浓度的动态平衡。线粒体迅速吸收钙离子的能力使其成为细胞中钙离子的缓冲区。在线粒体内膜膜电位的驱动下，钙离子可由存在于线粒体内膜中的单向运送体输送进入线粒体基质；排出线粒体基质时则需要钠-钙交换蛋白的辅助或通过钙诱导钙释放（calcium-induced-calcium-release，CICR）机制。在钙离子释放时会引起伴随着较大膜电位变化的“钙波”（calcium wave），能激活某些第二信使系统蛋白，协调诸如[突触](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E7%25AA%2581%25E8%25A7%25A6%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)中[神经递质](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E7%25A5%259E%25E7%25BB%258F%25E9%2580%2592%25E8%25B4%25A8%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)的释放及[内分泌细胞](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E5%2586%2585%25E5%2588%2586%25E6%25B3%258C%25E7%25BB%2586%25E8%2583%259E%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)中激素的分泌。线粒体也参与细胞凋亡时的钙离子信号转导。

**其他功能** 除了合成 ATP 为细胞提供能量等主要功能外，线粒体还承担了许多其他生理功能。调节[膜电位](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E8%2586%259C%25E7%2594%25B5%25E4%25BD%258D%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)并控制[细胞程序性死亡](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E7%25BB%2586%25E8%2583%259E%25E7%25A8%258B%25E5%25BA%258F%25E6%2580%25A7%25E6%25AD%25BB%25E4%25BA%25A1%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)：当线粒体内膜与外膜接触位点处生成了由[己糖激酶](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E5%25B7%25B1%25E7%25B3%2596%25E6%25BF%2580%25E9%2585%25B6%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)（细胞质基质蛋白）、外周苯并二氮受体和电压依赖阴离子通道（线粒体外膜蛋白）、[肌酸激酶](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E8%2582%258C%25E9%2585%25B8%25E6%25BF%2580%25E9%2585%25B6%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)（线粒体膜间隙蛋白）、ADP-ATP 载体（线粒体内膜蛋白）和亲环蛋白 D（线粒体基质蛋白）等多种蛋白质组成的通透性转变孔道（PT 孔道）后，会使线粒体内膜通透性提高，引起线粒体跨膜电位的耗散，从而导致细胞凋亡。线粒体膜通透性增加也能使诱导凋亡因子（AIF）等分子释放进入细胞质基质，破坏细胞结构。细胞增殖与细胞代谢的调控；合成胆固醇及某些[血红素](https://link.zhihu.com/?target=https%3A//baike.baidu.com/item/%25E8%25A1%2580%25E7%25BA%25A2%25E7%25B4%25A0%2522%2520%255Ct%2520%2522https%3A//baike.baidu.com/item/%25E7%25BA%25BF%25E7%25B2%2592%25E4%25BD%2593/_blank)。

**靶向线粒体的治疗方案**

线粒体能量代谢的紊乱会导致多种“继发性”线粒体疾病，线粒体导致疾病的常见原因有:1.ATP:ADP 的比率下降，NAD+的量下降，导致信号通路改变；2.代谢紊乱；3.产生大量 ROS，导致氧化损伤；4.诱导 MPTP 通路，使细胞凋亡或死亡；5.钙离子通道异常（如下图）。

![](https://pic1.zhimg.com/v2-0f0339c1157cd2243804f9f60e2f988c_b.jpg)

![](https://pic1.zhimg.com/80/v2-0f0339c1157cd2243804f9f60e2f988c_hd.jpg)

线粒体受损的常见原因

其相对应的靶向线粒体的治疗方案：补充 NAM、NMN 等来补充 NAD+；激活蛋白酶，伴侣蛋白，协助蛋白正确折叠；使用抗氧化剂（S1QELS/S3QELS 分别与呼吸链复合酶 I/复合酶 II 结合，抑制 ROS 生成）；使用 CsA，阻止 MPTP 通道引起的细胞凋亡或死亡。以上几个治疗方案是机动联合的，对其中一种进行调节，其他情况均会有所改善。

**研究线粒体功能的技术手段**

**增加线粒体数量的调节机制** 非直接影响线粒体，而是通过增加线粒体数量与活性，进而增加内膜表面积，增加 ATP 的产生。利用 PPCIα 蛋白相关调控机制，来调节线粒体的数量。PGCIα 能结合调控 NRF1/NRF2、ERRS、CRER1、FOXO、PPAR 等多种蛋白。其中 NRF1/NRF2 能够调控表达多种多肽靶向线粒体，eg：POCG（DNA 聚合酶）、DNA 解旋酶，其对线粒体分裂生成十分关键。研究表明比格列酮、罗格列酮等抗糖尿病药物，可激活 PPAR 从而增加 PGCIα 表达上调，致使线粒体数量增多。另外，使用 SIRT1 活化剂通过去乙酰化激活 PGCIα，从而增多线粒体数量。或者通过抑制线粒体合成抑制通路，增加线粒体数量，如低氧诱导因子。

**线粒体数量的动态平衡** 为适应不同生理功能，细胞内不同区域能量需求不同，线粒体通过分裂和融合的方式，动态变化适应机体需求。当分裂速率>融合速率，则线粒体数量增加；融合速率>分裂速率,则线粒体数量减少，体积增大。其中 Drp1、Fis1 酶参与线粒体分裂过程，而 Mfn1、Mfn2 参与线粒体外膜融合，OPA1 参与线粒体外膜融合。可以通过调节分裂融合相关蛋白，来调节线粒体的数量，作为一种治疗手段。

**加强对线粒体质量的把控** _加强对线粒体质量的把控可通过增加线粒体自噬的手段来实现_**，**研究表明增强线粒体分裂的药物可能会增加受损细胞器的清除，增加自噬，减少炎症的发生，一种较好的治疗策略。本文介绍了两种方式：AMPK 活化，从而增加对 Drp1 招募，使线粒体分裂，自噬；尿素 A 刺激自噬的发生，增加肌肉的功能。

**利用线粒体使细胞致死** 线粒体是细胞凋亡与死亡调控过程中的核心部分，其很多特性使其可作为靶点，致死癌细胞、寄生虫。其缺陷是可能导致无选择性的杀死正常细胞。**所以，要利用正常细胞与需致死细胞中线粒体之间的差异部分，作为靶点，结合抗癌药物进行治疗；或者通过耗尽抗氧化剂、增加 ROS 产量，使细胞氧化损伤，从而致死。**

**线粒体作为信号中心** 线粒体能向细胞其他部分发出信号，如 ATP/ADP、ca2+、NAD+、ROS、代谢物等，如 ROS 是作为氧化还原反应的信号，调节这些信号也可能成为一种治疗手段。

## FAQ

- Q：药物发现的生命周期？<br>
  A：靶分子的确定和选择；靶分子的优化；先导化合物的发现；先导化合物的优化；工业化制备及工艺研究；临床试验（共 IV 期）
- Q：计算机辅助的药物设计（CADD）？<br>
  A：CADD 分为两类：
  1. 基于受体的药物设计。
  - 选择受体（产生药理作用时，药物首先要能够分布到受体部位并与受体结合。与药物结合的 Binding Site 能够为 CADD 提供很多信息
  - 利用计算机分子模拟技术研究 binding site 的静电场，疏水场，氢键分布，整体构象，化学结构特征，即“描述符”
  - 依靠描述符在化合物数据库中筛选出需要的化合物。继续进行毒性筛选，结构新颖性筛选，类药筛选等等
  - 将少数被筛选出的分子进行 docking
  - 药理活性测定了，包括细胞实验，动物实验等等。
  2. 基于小分子的药物设计，也叫间接药物设计，针对受体三维结构不清楚的情况。这里要提一个概念“定量构效关系”，指的是药物分子的结构特征可以用物理化学参数，结构参数，拓扑参数定量，而药物的生物活性也是可以定量的，这样药物的结构与药效之间就能够进行定量分析了。因此基于小分子的药物设计就是从某些活性已知的小分子出发，分析相关的定量构效关系，从而进一步设计其他的药物，有些可能选择性更高，有些可能受体亲和力更强，有些可能药效更明显，但他们都拥有共同的母体化合物。
- Q：分子对接及主要软件？<br>
  A：AutoDock, Discovery Studio, MOE， DOCK 等。<br>
  为了完成对于一个小分子和一个靶点蛋白质的对接模拟，基本上有两大要素，第一就是**小分子本身可能形成的结构**，基本上是由分子每一个 rotatable bond 的二面角（dihedral angle）所决定的，另一点就是**小分子和靶点蛋白质之间的相互作用**，最基本的就是范德华力和静电作用。对接软件两大流派的区别就在于完成这两个要素的过程不尽相同。比方说要模拟某一个小分子和某靶点蛋白质的对接，一大流派的思路就是，_首先生成这个小分子所有可能的结构，然后试着把这些结构在不改变内部自由度的前提下对接到靶点蛋白质的 binding site 内，进行一些局部的 minimization，寻找到最合适的对接位置，然后用打分函数对于所有的结构打分排序_。另一个流派（以 DOCK6 分支为代表）的思路是这样的，我首先把这个小分子按 rotatable bond 分为若干片段，然后从其中最大的片段（我们成为锚，anchor）开始，首先把这个 anchor 放到 binding site 里，计算这个 anchor 和蛋白质之间的相互作用，进行局部优化，然后按顺序把下一个片段接到 anchor 上，尝试不同的二面角，计算相互作用，局部优化，然后周而复始，直到在 binding site 内把这个小分子组装完成为止。从目前看到的数据来看，两种方式在复制晶体结构（把一个小分子和蛋白质 complex 晶体结构拿来，把小分子拿出来，用软件模拟对接，看软件模拟结果和晶体结构是否相似）的成功率方面不相上下，但是效率似乎是第一种方式更高一些。
- Q：打分函数？<br>
  A：对于对接软件来说，打分函数可以说是最重要的一个部分了，有一个或者多个好的打分函数，可以大大提高虚拟筛选的成功率。打分函数也可以大致分为两大类，一类就是**以物理为基础**的，比如之前提到的范德华力和静电作用，再有也可以包括类似单点（single point）的 MM/GBSA 或者 MM/PBSA 计算，能够包括 desolvation penalty，但是由于只有一个结构进行单点计算，所以结果可能不是特别准确，远不如使用分子动力学模拟以后的计算来的准确。另一大类的打分函数是**以相似度为基础**的，即已知一个具有活性的小分子抑制剂，通过计算一个化合物库内化合物和已知抑制剂之间的相似程度排序，找出其中最接近的分子，也就是理论上最可能具有相似活性的分子了。这里所说的相似可以有许多不同的方面，包括二维分子结构，三维分子结构，在 binding site 内所占体积相似，药效基团（pharmacophore）结构相似，或者是和靶点蛋白质的相互作用方式相似等等不同的方式比较。据我所知这一类的打分函数在工业界应用得似乎更多一些。当然以相似度作为打分函数最大的问题可能就是，你找到的得分最高的分子理论上是跟已知分子最接近的一个，也就是说很有可能在活性上没有特别大的提升，但是同时，筛选抑制剂，或者说最终制药，活性只是一个方面，还有其他各种标准，所以这样的筛选也是有很大意义的。

## 基于 2D 和 3D 分子相似性的虚拟筛选

无论是化合物还是任何其他物体，相似性都是一个主观和多方面的概念。尽管其本质上具有主观性质，但量化化合物相似性的尝试在化学信息学和药物发现中具有悠久的历史，许多计算方法采用相似度测定来鉴定研究的新化合物。

![](https://pic2.zhimg.com/v2-f63f3a231b2b919253f3b7379b02cf31_b.jpg)

![](https://pic2.zhimg.com/80/v2-f63f3a231b2b919253f3b7379b02cf31_hd.jpg)

![](https://pic1.zhimg.com/80/v2-b09d268c38f78ebb37715d972bc51fc4_hd.png)

**分子相似性**

![](https://pic1.zhimg.com/80/v2-b09d268c38f78ebb37715d972bc51fc4_hd.png)

分子相似性（molecular similarity）的概念最早于十九世纪八九十年代的早期，是现在许多虚拟筛选技术的理论基础。根据相似性是否具有局部特性，分子相似性分析方法可以从整体上划分为全局方法和局部方法。局部相似性专注于分子拓扑结构上是否具有特定的官能团以及是否具有某些特定的对于分子识别至关重要的原子排布。

![](https://pic2.zhimg.com/v2-f2220959ea572c1ab51fbc97e91477ad_b.jpg)

全局分子相似性总是与小分子的生物响应行为联系在一起，不断与生物活性紧密相关的分子特征做任何假设；但是，与生物活性无关特征被纳入考虑范围，无疑会对分子相似性评价产生负面影响。

基于分子相似性的虚拟筛选核心是“相似性假设”，这个假设首先由 Johnson 和 Maggiora 提出，即结构类似的化合物具有类似的物化性质和生物活性，相似性方法在医药领域极具价值。

![](https://pic4.zhimg.com/v2-ce9094b31344adbe0d92ecac79252b8f_b.jpg)

描述符(descriptors)是分子相似性方法中的基本要素。目前已经有大量的描述符应用于分子相似性研究中，从描述符性质特征上看，描述符主要分为以下 3 个方面：

① 1D 描述符:由化合物本身属性衍生而来，如表示分子物化属性的 lgP ，摩尔折射率等；

② 2D 描述符:由 2D 分子图形或者结构片断计算得来的，如拓扑指数，2D 分子指纹，连接表，图(或子图)，(子)结构描述符等；

③ 3D 描述符:分子形状，分子总表面积和电压等。

**基于相似性的虚拟筛选案例**

恶性疟原虫对可利用的抗疟药物的耐药性出现挑战了目前的抗疟药治疗。因此，迫切需要新的抗疟疾药物，特别是那些具有新的作用机制和对当前药物没有交叉耐药性的抗疟疾药物。为了鉴定恶性疟原虫的新生长抑制剂，使用基于二维和三维相似性的虚拟筛选方法与使用夫西地酸作为搜索的类固醇型天然产物的内部数据库并行使用。

![](https://pic1.zhimg.com/v2-08b256f2d93b57229ff87e398461b90c_b.jpg)

**1.基于 2D 相似性的虚拟筛选**

采用 2D 指纹方法进行基于 2D 相似性的虚拟筛选。指纹是二进制格式的 2D 分子结构的表征。通过分子指纹之间的重叠来计算分子之间的结构相似性，2D 指纹方法由于其计算效率和有效性而成为基于 2D 相似性的虚拟筛选的选择方法，不需要生成用于筛选的分子 3D 构象。指纹方法的有用性也被提出用于骨架跃迁研究。

![](https://pic2.zhimg.com/v2-16dbfa88336437f066e0989ba3ab12d5_b.jpg)

目前的研究，没有已知可用于验证 2D 相似性方法的活性夫西地酸衍生物。利用分子模拟软件生成分子指纹，以选择最多合适的 2D 指纹方法进行虚拟筛选。使用夫西地酸作为检索查询分子，采用广泛使用的谷本系数（Tanimoto coefficient，Tc）作为所有 2D 相似检索方法选择指纹方法和命中化合物的评价标准。

**2.基于 3D 相似性的虚拟筛选**

用于发现具有所需生物学特征化合物的第二个相似性方法是基于 3D 形状的相似性搜索。  
形状相似性是分子的 3D 形状的比对，其基于如果分子的形状重叠良好如果可以相似的原理。  
基于形状筛选有效地用于先导化合物优化，并通过叠加相似化合物了解构效关系。此外，许多研究表明其在虚拟筛选实验中的成功应用。本研究中，基于形状相似性得分作为选择的评价标准，并对命中化合物进行排序。

![](https://pic1.zhimg.com/v2-bf5127d3ea15829660697d4a0cc405b8_b.jpg)

**3.基于相似性筛选命中化合物的过滤**

基于 2D 和 3D 相似性的虚拟筛选命中了 115 种化合物，去除重复获得了 79 种化合物。为了获得具有所需亲脂性的活性化合物，将这些命中化合物进行 log

P 筛选，丢弃 logP≤5.5 的任何化合物，以获得具有所需亲油性特征的命中化合物。基于以上选择的 41 种命中化合物进行进一步聚类分析，并对其进行目视检查。

![](https://pic1.zhimg.com/v2-3388f416182a32f5aecc65975b4d2880_b.jpg)

**4.活性评估**

基于来自内部数据库的每个样品的结构多样性和可用性，最终选择 27 种化合物并测试其对抗恶性疟原虫的体外活性，中国仓鼠卵巢（CHO）细胞系的细胞毒性，被测化合物的纯度 ≥95％。

![](https://pic4.zhimg.com/v2-1ee39041077cfec9b6861d152e951f03_b.jpg)

四种化合物的 IC50 值范围为 1.39-3.45μM，其中三种显示出有希望的选择性指数。

![](https://pic2.zhimg.com/v2-d26460746a0da742fdfe9bbea639e9e1_b.png)

参考资料：

1.Pavadai  
E, Kaur G, Wittlin S, et al. Identification of steroid-like natural  
products as antiplasmodial agents by 2D and 3D similarity-based virtual  
screening\[J\]. MedChemComm, 2017.

2.蔡超前. 分子相似性的计算方法研究\[D\]. 华东理工大学, 2013.

3.Maggiora  
G, Vogt M, Stumpfe D, et al. Molecular similarity in medicinal  
chemistry: miniperspective\[J\]. Journal of medicinal chemistry, 2013,  
57(8): 3186-3204.

4.部分图片来自网络。

## 基于片段的虚拟筛选

**导语**

自 1996 年 Shuker 等开创了“基于片段的药物发现(fragment-based  
drug discovery，FBDD) ”方法以来，人们在发现优质先导化合物的数量方面明显超过了高通量筛选(high throughput  
screening，HTS)方法，提高了大家对于“基于结构的药物设计(struc-ture-based drug design，SBDD) ”的理性认识，加速了新药创制过程。

![](https://pic1.zhimg.com/v2-19a476dd869b0c3fbb01f0f3554d86a8_b.jpg)

![](https://pic1.zhimg.com/80/v2-19a476dd869b0c3fbb01f0f3554d86a8_hd.jpg)

FBDD 方法通常先测定水溶性好的小分子化合物(相对分子质量

＜ 300，即片段分子)的亲和力，尽管结合力弱(通常为几百微摩尔或毫摩尔水平)，但其结合大都受氢键或盐键等焓因素的驱动，因此化合物的原子利用率高，冗余原子少。同时辅以结构生物学(X-射线衍射或

2D-NMR)显示片段在靶蛋白的空间取向和结合特征，在微观结构的指导下，通过片段的增长或连接，提高结合强度，获得高活性和高质量的先导化合物分子。**FBDD**是将化合物活性筛选、结构生物学技术、分子模拟、化学合成和构效关系整合在一起的综合性技术，用小分子与靶蛋白的结合特征指导优质先导物的生成，为成药性的优化预留了较大的化学空间，因而提高了研发效率。

![](https://pic3.zhimg.com/v2-68e70d4e87aebf10a0e80293dd9fdbb6_b.jpg)

**1.片段对接和片段虚拟筛选**

实验 FBDD 仅能筛选数百到数千个片段。然而，至少有 25 万个市售的片段，其中大部分仍未经过测试。计算作为补充方法，通过分子对接的虚拟片段筛选可以测试大部分市售片段。Carlsson 小组对 A2A 腺苷受体（A2AAR）进行平行的基于 NMR 的生物物理筛选和基于对接的片段库筛选。结果强调了生物物理和基于计算的片段筛选之间的互补性，因为从 NMR 和基于对接的虚拟筛选命中的片段之间没有重叠。事实上，片段对接已经与实验片段筛选结合用于药物发现。

![](https://pic4.zhimg.com/v2-0575aae430575c5a7018ad40e88dc7af_b.jpg)

虚拟片段筛选的主要挑战是片段对接和评分的准确性。首先，难以确定片段的准确结合姿势和结合模式。由于片段尺寸小、内部自由度较低；因此在对接计算期间，碎片可能会被蛋白质表面上的许多口袋所容纳，从而导致对接位置的错误。即使将其放入正确的口袋中也难以预测片段的结合姿势，因为替代的结合可能产生相似的对接分数或计算结合能。其次，针对较大的药物样分子开发和优化了大多数评分功能，其不足以区分许多非活性片段中的弱活性片段。

**2.片段库选择**

片段库选择基于 Rule of Three（简称 RO3）规则：

MW ≤300

H-bond donors ≤3

H-bond acceptors ≤3

cLogP ≤3

（来自 ChemBridge）

![](https://pic4.zhimg.com/v2-d1114c21d3e5c536c9056eb2c843a2bf_b.jpg)

RO3 规则过滤之后，可以根据自己的研究目的进行相关过滤。

**3.案例**

基于片段的药物设计是高通量筛选的有效替代方案。筛选片段优于筛选化合物的主要原因是片段的体外和计算筛选都是有效的；104 个不同片段（MW  
<250 Da）的集合通常比 106-107 个分子（MW  
<500Da）的化合物库具有更大的化学多样性。此外，片段倾向于具有良好的溶解度，这对于体外生物物理测定是有利的。基于计算的片段筛选中的一个重要优点是刚性碎片对接总是比具有几个可旋转键的分子对接更有效且通常更准确。

![](https://pic3.zhimg.com/v2-95b0a5740a56a0aa96e2a7685f79b0ca_b.jpg)

1.首先，2012 年版本的 ZINC 化合物库 900 万个化合物依据标准：分子量在 200 和 400

Da 之间、两个或更多个氢键受体、小于 8 个可旋转键、两到六个环，减少到约四分之一的相关维结构。剩余 460 万个化合物通过以软件分解为 375,897 个片段，然后将这些片段通过 60Da 和 300Da 之间的分子量过滤，至少一个氢键受体和最多三个可旋转键。

2.剩余的 238,408 个片段通过基于遗传算法的对接程序进行 BRD4 的对接，生成 511,417 个姿势。根据是否与保守的天冬酰胺存在氢键，移除未参与的片段。

3.含有 17,179 个结合片段的化合物库，其包含 665,184 个分子用于柔性配体对接。最终基于预测的结合自由能配体效率进行遴选，获得 4,826 个候选化合物。

4.每个蛋白-配体复合物进行 100 ns 分子动力学模拟，分析预测结合模式的结构稳定性，特别注意主要相互作用。模拟显示，其预期的一些结合模式不稳定的（即氢键与 Asn140 侧链的断裂）的化合物被过滤。

![](https://pic2.zhimg.com/v2-2d1de603257d9abb7deca8afef4aba91_b.jpg)

5.最后，遴选了 24 种化合物用于实验验证，其中 4 种显示出 50mM 的抑制活性。且对接预测的结合模式基本与晶体结构中观察到的结合模式相同。

参考资料：

1.Sliwoski G，Lowe Jr E W.fragment-based drug design\[J\].2013.

2.Spiliotopoulos  
D，Caflisch A.Fragment-based in silico screening of bromodomain  
ligands\[J\].Drug Discovery Today：Technologies，2016，19: 81-90.

3.郭颖，郭宗儒.重视基于片段的药物发现技术\[J\].中国新药杂志，2013，22(16)：1873-1877.

## 分子指纹及其在虚拟筛选中的应用

1.分子指纹（Molecular Fingerprint）

在比较两个化合物之间的相似性时遇到的最重要问题之一是任务的复杂性，这取决于分子表征的复杂性。 为了使分子的比较在计算上更容易，需要一定程度的简化或抽象。分子指纹就是一种分子的抽象表征，它将分子转化（编码）为一系列比特串（即比特向量，bit vector, 见 Figure 1.），然后可以很容易地在分子之间进行比较。典型的流程是将提取分子的结构特征、然后哈希(Hashing)生成比特向量。

![分子指纹及其在虚拟筛选中的应用-墨灵格的博客](http://blog.molcalx.com.cn/wp-content/uploads/2019/01/2019012909422621.png)

Figure 1. 比特向量

比较分子是很难的，比较比特串却很容易，分子之间的比较必须以可量化的方式进行。分子指纹上的每个比特位对应于一种分子片段（Figure 2），假设相似的分子之间必然有许多公共的片段，那么具有相似指纹的分子具有很大的概率在 2D 结构上也是相似的。

![分子指纹及其在虚拟筛选中的应用-墨灵格的博客](http://blog.molcalx.com.cn/wp-content/uploads/2019/01/2019012909491011.png)

Figure 2. 比特向量上的每个位置对应一个分子片段或特征

有十多种方法可以评估两个向量之间的相似性（参见：[Fingerprints-Screening and Similarity](http://www.daylight.com/dayhtml/doc/theory/theory.finger.html).），最常见的是欧几里德距离。但对于分子指纹，行业标准是 Tanimoto 系数，它由两个指纹中设置为 1 的公共位数除以两个指纹之间设置为 1 的总位数组成。这意味着 Tanimoto 系数总是具有介于 1 和 0 之间的值，而不管指纹的长度如何，这导致指纹随着指纹变长而变得松散。这种损失还意味着具有给定 Tanimoto 系数的两个指纹实际上将如何相似地将极大地取决于所使用的指纹的类型，这使得不可能选择用于确定两个指纹是相似还是不相似的通用截止标准。然而，通过数据融合策略将分子指纹与其他相似系数相结合，可以提高分子指纹的性能\[1\]。表 1 列出了几个与指纹一起使用的相似性和距离度量。

1.1 分子指纹的类型

根据将分子表征转换成位串方法的不同，分子指纹可以分为几种类型。 大多数分子指纹的编码方法仅使用了 2D 的分子图形信息，因此称为 2D 指纹; 一些方法能够存储 3D 信息，比如是药效团指纹。常见的分子指纹方法包括基于子结构的指纹(substructure key-based fingerprint)，基于拓扑或路径的指纹(topological or path-based fingerprint)和圆形指纹(circular fingerprint)。

1.1.1 基于子结构的指纹(substructure key-based fingerprint)

基于子结构的指纹根据给定结构列表中某些子结构或特征的存在与否来设置位串。 这意味着如果分子主要由指纹的子结构组成时最有用，而当分子包含指纹的子结构时则不那么多时则不会很有用，因为它们的特征将不被分子指纹所表示。 一种分子指纹的位数由子结构的数量决定，每个比特位与分子中单个给定特征的存在或不存在有关（Figure 3），这与其他（散列）类型的指纹不同。 最常用的基于子结构的分子指纹有：

- MACCS\[2\]

MACCS 采用 SMARTS 编码的子结构，根据子结构种类数量不同有两个变种：一种是 166，另一种是 960。 较短的是最常用的，因为它的长度相对较小（仅 166 位），但涵盖了药物发现和虚拟筛选时的大多数感兴趣的化学特征。大部分软件中的 MACCS 指纹用的是短版本，而较长的 960 版本则很少见，大部分软件包不能计算。

![分子指纹及其在虚拟筛选中的应用-墨灵格的博客](http://blog.molcalx.com.cn/wp-content/uploads/2019/01/2019012819260476.png)

Figure 3. 一个 10-BIT 长度的[指纹图谱](http://blog.molcalx.com.cn/tag/%e6%8c%87%e7%ba%b9%e5%9b%be%e8%b0%b1 "浏览关于“指纹图谱”的文章")示意图：每个位置编码一个子结构, 有 3 个位置所代表的子结构出现在上图的分子中（即被圆圈圈中的那些子结构），这些位置被标为 1；其它的位置代表的子结构没有出现在分子中，则被标为 0。

- PubChem 指纹\[3\]

该指纹具有 881 个子结构，涵盖了广泛、多样的不同子结构和官能团。 PubChem 将该指纹用于相似性搜索。 除了 PubChem 自己的代码之外，在 PaDEL-Descriptor\[4\]和 CDK\[5,6\]中都有实现。

1.1.2 基于拓扑或路径的指纹图谱(Topological or path-based fingerprint)

基于拓扑或路径的指纹通过分析从一个原子开始直至到达指定数量键的路径（通常为线性）上所有的分子片段，然后对每一个路径中的进行哈希(Hasing)产生指纹（Figure 4）。此类指纹适用于任意一个分子，并可以调整其长度，可以用于快速的子结构搜索与分子过滤。哈希的指纹意味从比特位出发无法追踪到结构特征。同样的比特位可以对映不同的结构特征，称为“比特位冲突”（bit collision）。Daylight 指纹(Daylight fingerprint)\[7\]是此类型指纹中最突出的代表。它们由多达 2048 的比特位组成，编码了分子达到给定长度的所有可能的连接途径。大多数软件可实现此类指纹，有的软件可以达到更高的位数或使用非线性连接路径，例如 OpenEye 的 Tree 指纹（Tree fingerprint）\[8\]。

![分子指纹及其在虚拟筛选中的应用-墨灵格的博客](http://blog.molcalx.com.cn/wp-content/uploads/2019/01/2019012908450026.png)

Figure 4. 采用线性路径分析长达 5 键路径上的所有分子片段生成的 10 比特位拓扑指纹。从起始原子（用圆圈标出）出发找到的所有片段，片段长度和相应的比特位用箭头指示。如图可见有两个比特位冲突，多个片段指向同一个比特位并引发比特位减少。上图仅展示了从一个单个起始原子出发的片段和比特位;对于完整的指纹，将对分子中的每个原子进行重复该过程。圆形指纹（Circular fingerprint）采用类似的方法，不同是的在起始原子特定半径内构建片段而不是线性路径上构建片段。

1.1.3 圆形指纹图谱(Circular fingerprints)

圆形指纹也是一种哈希的拓扑指纹，但它们与基于路径的指纹不同之处在于：不是在分子中寻找路径，而是记录每个从原子出发直到指定半径内的环境（见 Figure 5）。 因此，此类指纹不适用于子结构查询（因为相同的片段可能具有不同的环境），但广泛用于完整结构的相似性搜索。

![分子指纹及其在虚拟筛选中的应用-墨灵格的博客](http://blog.molcalx.com.cn/wp-content/uploads/2019/01/2019012910010287.png)

Figure 5. Circular Fingerprint 示意图\[9\]：以一个重原子为中心，搜寻在特定半径范围（有的实现用直径）内的结构特征，比如力场的原子类型，官能团，片段等等各种信息。

- Molprint2D

MolPrint2D 是由 Bender 等(2004)开发\[11,12\],常用于 QSAR 研究与比较分子的相似性。OpenBabel 与 jCompoundMapper 提供了 MolPrint2D 指纹生成方法。

- ECFP

从 Morgan 算法\[13\]衍生出来的扩展连接指纹（Extended-Connectivity Fingerprints,ECFP）已经成为事实上圆形分子指纹的行业标准方法，专门设计用于构效关系研究\[14\]。 ECFP 指纹在使用的时候，根据设定的直径不同会产生可变长度的指纹。最常用的是直径为 4 的 ECFP4，还有直径为 6 的 ECFP6，一些基准测试显示两者之间的性能差异很小\[15\]。 此外，还有一些变体比如 ECFC 还记录了 ECFP 特征的频率计数，而不仅只是是否出现。多种软件都提供了 ECFP 或 Morgan 算法，比如 Pipe-line Pilot, Chemaxon 的 JChem, CDK 和 RDKit。注意，在 RDkit 中称为 Morgan Fingerprint，路径长度用半径表示而不是直径，因此在 RDkit 的半径 2 相当与 ECFP 的直径 4 指纹。根据[Gregory Landrum 的测试](http://rdkit.org/UGM/2012/Landrum_RDKit_UGM.Fingerprints.Final.pptx.pdf)，Morgan 指纹与 ECFP 在相似性比较上没有显著差异\[16\]。

根据 Rogers 与 Hahn 的研究\[14\]，一般来说，直径小的 ECFP4 足够适合于相似性搜索与分子聚类；而直径更大的 ECFP 得益于其包含更多的分子结构细节，因此适合于机器学习进行活性预测等，但限于计算量，通常用 ECFP6 与 ECFP8。

- FCFP（Functional-Class Fingerprints）

FCFP 是 ECFP 的一种变体，它进一步被抽象：它不是索引环境中的特定原子，而是索引该原子的作用。因此，具有相同或相似功能的不同原子或基团在该指纹里是没有区别的，这使它们可以作为一种药效团指纹。还有其它的 FCFC 变体，类似于 ECFC 对 ECFP 的变化。支持 ECFP 指纹的主要软件包基本也支持 FCFP。

1.1.4 混合指纹（hybrid fingerprint）

有些分子指纹方法将不同指纹方法产生的比特串组合成为一个新的比特串，常用的包括：

- UNITY 2D

UNITY 2D 是 SYBYL 软件包 UNITY 模块使用的一种指纹图谱，它组合了基于子结构与连接路径片段两种方法，长度为 988 比特位。

- MP-MFP

Ling Xue 等人(Xue 2003)\[17\]设计开发的 MP-MFP 指纹包含了 171 比特位，其中 110 比特位编码化学子结构，61 位编码了性质描述符(Figure 6)。

![分子指纹及其在虚拟筛选中的应用-墨灵格的博客](http://blog.molcalx.com.cn/wp-content/uploads/2019/01/2019012913113383.png)

Figure 6.MP-MFP 指纹示意图：浅灰色编码了性质信息（比如氢键受体、供体），深灰色编码了化学子结构信息。

1.1.5 药效团指纹图谱(Pharmacophore fingerprint)

药效团指纹也是常用的一种分子指纹。药效团代表了分子对给定靶标具有活性所需的相关特征和相互作用。 药效团指纹通常以类似于基于子结构的指纹方式编码分子的结构特征，但同时考虑了这些特征之间的距离，通常按距离范围对其进行分类生成比特位串。 这样，3D 的药效团信息就可以编码到指纹中去。比如 SYBYL 软件包中的 Tuplet 就可以编码分子的 3D 药效团 22(Figure 7)。在 Tuplet 中，分子的形状也用类似的方式编码，因此可以同时比较药效团与分子形状。

![分子指纹及其在虚拟筛选中的应用-墨灵格的博客](http://blog.molcalx.com.cn/wp-content/uploads/2019/01/2019012913363617.png)

Figure 7. Tuplet 药效团指纹图谱示意图：一个分子不同的构象，将每个构象的药效团特征按聚类分类、编码为比特串。

1.1.6 其它类型

LINGO \[18\]和 SMIfp \[19\]是基于文本的分子指纹编码方法，这两种指纹从化合物的规范 SMILES 编码（canonical SMILES）出发生成化合物的指纹。分子指纹还可以基于结构的信息编码蛋白质-配体之间的相互作用，比如 Da C 等人(2014)\[20\]提出的蛋白-配体相互作用指纹(Structural Protein-Ligand Interaction Fingerprint,SPLIF）与 Deng 等人(2004)\[21\]提出结构相互作用指纹（Structural Protein–Ligand Interaction Fingerprints，SIFt）则编码了蛋白质-配体相互作用的信息，例如氢键、离子相互作用、与其残基的表面接触等等。

2\. 基于指纹图谱虚拟筛选的软件

- OEChem TK/OpenEye

OpenEye 的 OEChem TK 可以生成 166 位的 MACCS，LINGO，Circular，Path（与 Daylight 类似）和 Tree（与 Dayligth 类似的非线性、“树”片段）指纹，提供了 C ++，Java，Python 和 C＃接口。

- JChem/ChemAxon

支持 ECFP 及其全部的变种 ECFC, FCFP,FCFC 以及药效团指纹图谱。

- Open Babel

开源软件，支持 MOLPRINT2D、166-bit MACCS、 Daylight 样指纹 FP2、FP3,提供了 C++, Python、Perl、Ruby 与 Java 等接口。

- RDKit

也是一款免费、开源的化学信息学工具包，支持多种指纹：MACCS（166-Bit）、与 Daylight 类似拓扑指纹、Atom Pairs（ 分子中每个原子对基于原子环境和最短路径分离），Morgan 指纹，Torsion 指纹（基于拓扑两面角描述符）和 Layered 指纹。RDKit 提供了 C++，Python，Java 以及 C＃等 API。

- CDK

支持 ECFP, Estate, LINGO,MACCS, Daylight 类似指纹图谱。

- Indigo

免费的开源化学信息学工具包，包含了几个哈希指纹及其组合，提供了 C ++、Java、Python 和 C＃等开发接口。

- Cinfony

整合了 Open Babel, RDKit, CDK, JChem 与 Indigo 的全部功能。

- ChemFP

用 Open Babel, RDKit 与 OEChem 做为后端进行计算。

- Canvas/Schrodinger

MACCS,MOLPRINT2D, ECFP 与线性路径指纹。

- MOE

TGD, TGT,MACCS, 2D 与 3D 的四点药效团指纹，EigenSpectrum 形状指纹。

- jCompoundMapper

这是一款开源命令行软件，使用 CDK 支持多种指纹，包括 MOLPRINT2D，原子对和药效团指纹等。 此外，它还提供了几种机器学习工具。

- Pipeline Pilot

Pipeline Pilot 本身是一款具有数据流工具，它可以计算各种指纹，包括 MACCS、ECFP 及其变体。

- SYBYL-X

SYBYL-X 采用其自己的 UNITY 2D 指纹进行数据库搜索。

- FLAP

FLAP 是 MolDiscovery 开发是一种虚拟筛选软件，FLAP 的指纹编码了分子的四点药效团特征信息，可用于配体-配体、配体-受体和受体-受体的比较。

- MayaChemTools

MayaChemTools 是用 Perl 写的程序，可以计算多种分子指纹，包括 ECFP，MACCS，基于路径的指纹等等; 它也可以直接用于指纹的相似性搜索。

3.使用指纹进行虚拟筛选的场景

用指纹相似性进行虚拟筛选，需要具备以下条件：

- 至少一个已知的活性化合物做为参比分子（reference）
- 一个数据库，其中含有潜在的活性化合物
- 软件有能力生成并比较指纹

一旦确定了参比分子，下一步就是选择最合适的指纹。选择通常受限于软件的选项。最合适的选择还取决于参比分子，因为指纹应该能够正确地表征参比分子（哈希指纹不需要考虑这一点）。还应考虑数据库和可用指纹是否考虑立体化学、互变异构形式以及参比分子和数据库分子的构象。应优先使用立体化学敏感方法筛选立体化学敏感数据库。如果构象很重要的话，应该使用能够编码构象信息的指纹。还应考虑所研究分子的互变异构现象，因为同一分子的不同互变异构体可具有显着不同的指纹。

使用所选择的算法计算数据库中每个分子和参比分子的指纹，然后计算参比分子和数据库中每个分子之间的相似性系数。再根据相似系数对分子进行从大到小排序。最靠前的那些分子应该具有与参比分子相似的生物活性。

4\. 与其它虚拟筛选方法的比较

4.1 3D 方法优于指纹

Tresadern 等人\[23\]在对 CRF1 受体进行虚拟筛选时比较了几种采用基于配体的方法：ECFP6 指纹，特征树(Feature tree)，Topomer，ROCS Shape Tanimoto，EON Electrostatic Tanimoto、OpenEye ComboScore（Shape Tanimoto 和 Color score 的组合）和 Cresset Fieldscreen。 结果表明：在 4 个计算中 ECFP6 指纹有 3 个表现最差，但 ECFP6 在其中一个计算中的性能优于其它方法。同时，3D 方法可以也比 2D 指纹的方法发现结构更多样、更多骨架类型的化合物。

4.3 2D 相似性方法优于 3D 相似性方法与分子对接

McGaughey 等人\[24\]比较了几种拓扑、形状与分子对接等基于配体与基于结构的虚拟筛选方法。在她的研究中，2D 相似性的比较用到了 Daylight 指纹与 TOPOSIM，3D 相似性测试了 SQW 与 ROCS，分子对接测试了 FLOG、FRED 与 Glide。在该研究中，作者考察了这些软件在 11 个靶标、2 个化合物数据库(MDDR 与 Merck 内部数据库)上的虚拟筛选性能。就多个靶标的平均富集因子而言，基于配体的方法要优于基于结构的方法(见 Figure 8,9)。与其他多种虚拟筛选方法进行的比较，2D 相似性方法优于大多数其他方法。作者得出结论：“就 EF 值而言，2D 相似性方法（TOPOSIM，Daylight）在对具有结构多样性的数据库进行骨架跃迁时表现良好..."。

![分子指纹及其在虚拟筛选中的应用-墨灵格的博客](http://blog.molcalx.com.cn/wp-content/uploads/2019/01/2019013017182574.png)

Figure 8. 基于配体的方法性能比较

从 Figure 8 还可以发现，用 MDDR 数据集评估的性能比用 MCIDB 数据集的要好。其中的一个原因可能是：MDDR 文献数据居多，各个作者可能采用跟进策略因此公开的化合物具有更多的相似性，而使得虚拟筛选更容易；而 MCIDB 是 Merck 公司自己的数据，对化合物多样性要求更高，这使得虚拟筛选更难。

![分子指纹及其在虚拟筛选中的应用-墨灵格的博客](http://blog.molcalx.com.cn/wp-content/uploads/2019/01/2019013016465939.png)

Figure 9. 基于结构的方法性能比较

同样的，对于基于结构的方法，从 Figure 9 也观察到 MDDR 数据集比 MCIDB 数据集更容易虚拟筛选。比较 Figure 8 与 Figure 9，基于配体的方法富集因子远远地比基于结构的要高。

Venkatraman 等人用 DUD 数据集比较了几种基于配体方法的虚拟筛选性能，作者将指纹（Open Babel FP2，BCI，MACCS，Daylight 和 MOLPRINT2D）与基于 3D 的分子形状的方法（ESHAPE3D，ROCS，PARAFIT，SHAEP 和 USR）进行了比较。作者总结到：“总的来说，我们发现基于 2D 指纹的方法比许多基于 3D 形状的方法在 DUD 数据集上表现出更好的虚拟筛选性能”。 这表明了 3D 方法并不总是优于简单的指纹相似性搜索。

**文献**

1.  Salim N, Holliday J, Willett P. Combination of Fingerprint-Based Similarity Coefficients Using Data Fusion. J Chem Inf Comput Sci. 2003;43(2):435-442. doi:10.1021/ci025596j.
2.  Durant, J. L.; Leland, B. A.; Henry, D. R.; Nourse, J. G. Reoptimization of MDL Keys for Use in Drug Discovery. J. Chem. Inf. Comput. Sci. 2002, 42 (6), 1273–1280. https://doi.org/10.1021/ci010132r.
3.  Cereto-Massagué A, Ojeda MJ, Valls C, Mulero M, Garcia-Vallvé S, Pujadas G. Molecular fingerprint similarity search in virtual screening. Methods. 2015;71:58-63. doi:10.1016/j.ymeth.2014.08.005.
4.  Yap CW. PaDEL-descriptor: An open source software to calculate molecular descriptors and fingerprints. J Comput Chem. 2011;32(7):1466-1474. doi:10.1002/jcc.21707.
5.  CDK (Version 2.1), https://cdk.github.io
6.  Steinbeck C, Han Y, Kuhn S, Horlacher O, Luttmann E, Willighagen E. The Chemistry Development Kit (CDK): An Open-Source Java Library for Chemo- and Bioinformatics. J Chem Inf Comput Sci. 2003;43(2):493-500. doi:10.1021/ci025584y.
7.  Daylight chemical information systems, Daylight. http:// www.daylight.com. (accessed on 26/01/2019).
8.  OEChem,OpenEye scientific software. http:// www.eyesopen.com. (accessed on 26/01/2019).
9.  Glem, R. C.; Bender, A.; Arnby, C. H.; Carlsson, L.; Boyer, S.; Smith, J. Circular Fingerprints: Flexible Molecular Descriptors with Applications from Physical Chemistry to ADME. IDrugs 2006, 9 (3), 199–204. https://doi.org/16523386.
10. Cereto-Massagué, A.; Ojeda, M. J.; Valls, C.; Mulero, M.; Garcia-Vallvé, S.; Pujadas, G. Molecular Fingerprint Similarity Search in Virtual Screening. Methods 2015, 71, 58–63. https://doi.org/10.1016/j.ymeth.2014.08.005.
11. Bender, A.; Mussa, H. Y.; Glen, R. C.; Reiling, S. Molecular Similarity Searching Using Atom Environments, Information-Based Feature Selection, and a Naïve Bayesian Classifier. J. Chem. Inf. Comput. Sci. 2004, 44 (1), 170–178. https://doi.org/10.1021/ci034207y.
12. Bender, A.; Mussa, H. Y.; Glen, R. C.; Reiling, S. Similarity Searching of Chemical Databases Using Atom Environment Descriptors (MOLPRINT 2D): Evaluation of Performance. J. Chem. Inf. Comput. Sci. 2004, 44 (5), 1708–1718. https://doi.org/10.1021/ci0498719.
13. Morgan, H. L. The Generation of a Unique Machine Description for Chemical Structures-A Technique Developed at Chemical Abstracts Service. J. Chem. Doc. 1965, 5 (2), 107–113. https://doi.org/10.1021/c160017a018.
14. Rogers, D.; Hahn, M. Extended-Connectivity Fingerprints. J. Chem. Inf. Model. 2010, 50 (5), 742–754. https://doi.org/10.1021/ci100050t.
15. Riniker, S.; Landrum, G. A. Open-Source Platform to Benchmark Fingerprints for Ligand-Based Virtual Screening. J. Cheminform. 2013, 5 (1), 26. https://doi.org/10.1186/1758-2946-5-26.
16. Landrum, G. Fingerprints in the RDKit. RDKit UGM 2012 2012. http://rdkit.org/UGM/2012/Landrum\_RDKit\_UGM.Fingerprints.Final.pptx.pdf (accessed on 26/01/2019)
17. Xue, L.; Godden, J. W.; Stahura, F. L.; Bajorath, J. Design and Evaluation of a Molecular Fingerprint Involving the Transformation of Property Descriptor Values into a Binary Classification Scheme. J. Chem. Inf. Comput. Sci. 2003. https://doi.org/10.1021/ci030285+.
18. Vidal, D.; Thormann, M.; Pons, M. LINGO, an Efficient Holographic Text Based Method to Calculate Biophysical Properties and Intermolecular Similarities. J. Chem. Inf. Model. 2005. https://doi.org/10.1021/ci0496797.
19. Schwartz, J.; Awale, M.; Reymond, J.-L. SMIfp (SMILES Fingerprint) Chemical Space for Virtual Screening and Visualization of Large Databases of Organic Molecules. J. Chem. Inf. Model. 2013, 53 (8), 1979–1989. https://doi.org/10.1021/ci400206h.
20. Da, C.; Kireev, D. Structural Protein–Ligand Interaction Fingerprints (SPLIF) for Structure-Based Virtual Screening: Method and Benchmark Study. J. Chem. Inf. Model. 2014, 54 (9), 2555–2561. https://doi.org/10.1021/ci500319f.
21. Deng, Z.; Chuaqui, C.; Singh, J. Structural Interaction Fingerprint (SIFt): A Novel Method for Analyzing Three-Dimensional Protein−Ligand Binding Interactions. J. Med. Chem. 2004, 47 (2), 337–344. https://doi.org/10.1021/jm030331x.
22. Fox, P. C.; Wolohan, P. R. N.; Abrahamian, E.; Clark, R. D. Parameterization and Conformational Sampling Effects in Pharmacophore Multiplet Searching. J. Chem. Inf. Model. 2008, 48 (12), 2326–2334. https://doi.org/10.1021/ci800234q.
23. Tresadern, G.; Bemporad, D.; Howe, T. A Comparison of Ligand Based Virtual Screening Methods and Application to Corticotropin Releasing Factor 1 Receptor. J. Mol. Graph. Model. 2009, 27 (8), 860–870. https://doi.org/10.1016/j.jmgm.2009.01.003.
24. McGaughey, G. B.; Sheridan, R. P.; Bayly, C. I.; Culberson, J. C.; Kreatsoulas, C.; Lindsley, S.; Maiorov, V.; Truchon, J.-F. F.; Cornell, W. D. Comparison of Topological, Shape, and Docking Methods in Virtual Screening. J. Chem. Inf. Model. 2007, 47 (4), 1504–1519. https://doi.org/10.1021/ci700052x.
25. Venkatraman, V.; Pérez-Nueno, V. I.; Mavridis, L.; Ritchie, D. W. Comprehensive Comparison of Ligand-Based Virtual Screening Tools Against the DUD Data Set Reveals Limitations of Current 3D Methods. J. Chem. Inf. Model. 2010, 50 (12), 2079–2093. https://doi.org/10.1021/ci100263p.

## HDAC 家族蛋白抑制剂多策略虚拟筛选

组蛋白去乙酰化酶（histone  
deacetylase，HDAC）是一类蛋白酶,对染色体的结构修饰和基因表达调控发挥着重要的作用。组蛋白去乙酰化酶抑制剂（histone deacetylase inhibitors，HDACi）通过增加细胞内组蛋白的乙酰化程度，提高 p21 等基因的表达水平等途径，抑制肿瘤细胞的增殖，诱导细胞分化和（或）凋亡。

组蛋白去乙酰化酶抑制剂已成为肿瘤靶向治疗的研究新热点，其对肿瘤细胞迁移、侵袭、转移的抑制作用和抗肿瘤血管生成作用也被证实。

为快速研发组蛋白去乙酰化酶抑制剂，我们采用基于配体和基于受体的多种发现策略对我们选用包含约 20 万个小分子化合物的大型商业数据库 SPECS 进行虚拟筛选（图 1）。直接采用分子对接虚拟筛选的计算成本将很高，因而，我们改用逐层筛选策略，即先通过简单高效的分子性质过滤和相似度搜索方法获得第一轮筛选结果，然后采用相对复杂和耗时的分子对接方法进行第二轮筛选，最后根据分子结构进行聚类，挑选合适的多样性子集。

![](https://pic1.zhimg.com/v2-c5af0f0b37922f84f036409f3af46638_b.jpg)

![](https://pic1.zhimg.com/80/v2-c5af0f0b37922f84f036409f3af46638_hd.jpg)

▲ 图 1 HDAC 抑制剂虚拟筛选流程图

首先，我们从 Binding Database 数据库上收集 HDAC1~4 的抑制剂，根据一定规则筛选得到 2350 个 HDACi，然后计算化合物的分子性质，按照其分布情况（图 2），对 SPECS 化合物库进行过滤，得到约 16 万个化合物。

![](https://pic1.zhimg.com/v2-61b9ad36201a0f0edc56b2bd9bda5e60_b.jpg)

![](https://pic1.zhimg.com/80/v2-61b9ad36201a0f0edc56b2bd9bda5e60_hd.jpg)

▲ 图 2 HDACi 的分子性质分布图

接着，我们计算过滤后的 SPECS 化合物库与 HDAC 抑制剂之间的分子结构相似性，保留相似度大于 0.7 的化合物，得到 2 万多个化合物。

为选择合适的分子对接体系和方法，我们对个体系进行了系统适用性检验和效能检验。我们从 RCSB Protein Data Bank 上获得 HDAC1~4 的晶体结构共 9 个，并进行了合理的处理，然后进行重对接系统适用性检验，评价结果如下（表 1）。

![](https://pic4.zhimg.com/v2-f64e05100dd923279e4ad69975fe2863_b.png)

接着，我们从已知的 HDAC 抑制剂中分别挑选了 10 个多样性良好的化合物作为 query 化合物集，并构建了 decoy 化合物集，根据分子对接的打分绘制各体系的 ROC 曲线（图 3）。根据分析，我们分别挑选了 4 个体系进行实际筛选。

![](https://pic4.zhimg.com/v2-a7716c9ddd0a680c61f3d56ac580e577_b.jpg)

▲ 图 3 分子对接方法的效能检验 ROC 曲线

根据效能检验的临界点和 Zn2+配体关键药效团，我们对分子对接筛选结果进行过滤，分别得到 159、6、151 和 215 个，其中有部分化合物是潜在的双靶标抑制剂。经合并、去重和聚类，最后得到 36 个多样性子集用于生物活性测试。

## 骨架跃迁简介

**导语**

现代药物发现中，生物相关化合物通常由高通量筛选（HTS）或虚拟筛选（VS）产生。对于一个新的靶标，HTS 可能是识别生物活性化合物的唯一途径。然而，对于众所周知的靶标，通过筛选数万到数百万结构多样性的化合物来检索活性化合物既不经济也没有效率。实际上，由于有限的可成药靶标，治疗上感兴趣的一部分靶标不是新的，可以基于已知的配体或配体-蛋白质复合物结构探索这些靶标的新颖化学结构。历史上，市场上销售的许多药物来源于其他已知的药物或天然产物。

![](https://pic2.zhimg.com/v2-6b8efe4a661a7b35d09e1dc4158af311_b.jpg)

![](https://pic2.zhimg.com/80/v2-6b8efe4a661a7b35d09e1dc4158af311_hd.jpg)

骨架跃迁（Scaffold Hopping）也称先导物跃迁，是发现结构新颖化合物的一个策略。骨架跃迁方法通常以已知的活性化合物为起点，通过改变分子的核心结构获得新颖的化学结构而结束。虽然骨架的概念相对较年轻，但是从药物发现开始就应用了该策略。不仅应用于具有已知配体的项目，骨架跃迁也广泛应用于先导化合物优化。

**1 骨架跃迁的历史**

骨架跃迁的概念在 1999 年由 Schneider 等人提出，用于鉴定具有显著不同分子骨架的同功分子结构的技术。简单的定义强调了骨架跃迁的两个关键组成部分：新化合物相对于母体化合物的不同核心结构和相似的生物活性。这两个要求似乎与相似性原理相冲突，其中指出具有相似化学结构的化合物通常具有相似的物理化学性质和生物活性。实际上，这个原理并不排除结构上多样化合物与同一靶标结合的可能性。通常保持相似性原理，因为尽管配体可能属于不同的化学型，但是结合在同一口袋中的配体可以具有一定的结构相似性，即相似的形状和电位表面。

![](https://pic4.zhimg.com/v2-ac9182c373df9757452ccf15d27c1d1f_b.jpg)

![](https://pic4.zhimg.com/80/v2-ac9182c373df9757452ccf15d27c1d1f_hd.jpg)

**2 骨架跃迁方法分类**

根据骨架跃迁的定义，从母体化合物获得的衍生物具有新颖的核心结构。问题是衍生分子必须与其母体化合物有多大的不同，以便将改进定义为骨架跃迁。换句话说，如何判断获得衍生物相对于母体化合物的新颖性。如果使用不同的合成路线合成了两种骨架，不管变化有多小，Boehm 等研究人员将两种骨架分为不同两类。许多案例中，化学结构密切相关，但可以申请不同的专利和递交不同的新药申请可被 FDA 批准都证实了上面的说法。例如，两种磷酸二酯酶 5 型（PDE5）抑制剂西地那非和伐地那非之间的主要结构差异是 5-6 稠环中碳原子和氮原子的互换，但差异足以使两个分子被不同的专利覆盖。

![](https://pic4.zhimg.com/v2-fc52b4160a9f6639c7886dd5a5dd2257_b.jpg)

![](https://pic4.zhimg.com/80/v2-fc52b4160a9f6639c7886dd5a5dd2257_hd.jpg)

**本文将骨架跃迁分为 4 类**：杂环替换、开环或闭环、肽模拟和基于拓扑的跃迁。

**1.杂环替换**

用作药物分子核心的杂环功能团通常提供向不同方向突出的多个载体。在保持载体方向不变的同时，替换杂环中的 C，N，O 和 S 原子可产生新的骨架。如果杂环直接参与与靶蛋白的相互作用，则可能实现改善结合亲和力。

**例：COX-1 和 COX-2 抑制剂**

非甾体抗炎药抑制由花生四烯酸引起的前列腺素生物合成的环加氧酶（COX）起作用。人体中有两种催化 PGs 第一步生物合成的酶，即 COX-1 和 COX-2。虽然催化相同的反应，但 COX-1 和 COX-2 的组织分布和生理功能是不同的。虽然 COX-1 和 COX-2 只有 60％的序列同源性，但蛋白质主链，特别是配体结合位点，彼此非常相似。另一方面，配体结合位点的微妙结构差异足以产生选择性抑制剂。

![](https://pic2.zhimg.com/v2-eebfb8ef5774a990097c1c7eecb6de39_b.jpg)

![](https://pic2.zhimg.com/80/v2-eebfb8ef5774a990097c1c7eecb6de39_hd.jpg)

三种二芳基杂环 COX-2 选择性抑制剂主要在杂环骨架中彼此不同。尽管它们与 COX-2 的活性水平相当，但其药理学性质完全不同。

**2.开环或闭环**

大多数药物样分子含有至少一个环系统，因此开环和闭环是产生新型骨架的两种直接策略。由于分子灵活性不仅对结合自由能熵的组成有很大贡献，而且对膜的渗透和吸收也有很大贡献，开环和闭合是提高药物分子性质的有用策略。开环和闭环通过控制可自由转动键的总数来操纵分子的灵活性。

**例：闭环**

分子内氢键（HB）通常提供关闭环的直接提示。通过 O-烷氧基和联芳基 NH 之间的潜在的分子内 HB， GSK 研究小组合成了一系列吲哚化合物作为前列腺素 EP1 受体拮抗剂。闭环设计成功地将分子锁定成生物活性构象。

![](https://pic1.zhimg.com/v2-65a9cfbf55351c2b697bce65e8eca2e4_b.jpg)

![](https://pic1.zhimg.com/80/v2-65a9cfbf55351c2b697bce65e8eca2e4_hd.jpg)

**例：开环**

虽然闭环对结合自由能有积极的影响，但是对溶解度和其他 ADME 性质也产生了潜在的负面影响。为了克服分子中太多环的不利影响，药物化学家可以实践开环，以增强分子的类药性。

吡啶并嘧啶酮是蛋白激酶抑制剂的典型部分。6-芳基取代的吡啶并嘧啶酮是一种广谱的酪氨酸激酶抑制剂。为了设计新型酪氨酸激酶抑制剂，Furet 等研究人员打开嘧啶环，并将嘧啶环 1 位的氮原子移到位置 5，通过分子内氢键与相邻的尿素形成伪六元环。测试结果进一步支持了伪环设计概念，嘧啶基脲化合物显示了对几种酪氨酸激酶的亚微量抑制。

![](https://pic1.zhimg.com/v2-ca0f07933613807c848b7386901f0b44_b.jpg)

![](https://pic1.zhimg.com/80/v2-ca0f07933613807c848b7386901f0b44_hd.jpg)

**3.肽模拟**

生物活性的内源肽，如肽激素、生长因子和神经肽在我们的身体中起着重要的生物学功能。这些肽的不平衡可引起不同的人类疾病，包括糖尿病、癌症、骨质疏松症和子宫内膜异位症等。肽开发为临床上有用的药物受到其代谢稳定性差和生物利用度低的阻碍。使用活性肽构象作为模板设计小分子模拟肽的结构特征，在一些具有挑战性的靶标上获得有希望的结果。该应用已经扩展到涉及蛋白-蛋白相互作用（PPI）的靶点，其中小分子被设计为模拟蛋白质的相互作用部分。基于肽的药物发现的主要目标是减少肽的性质，以增强对蛋白水解的抵抗力，同时保持分子识别的关键化学特征。骨架跃迁是将肽转化为小分子的典型方法。

**例：触发细胞凋亡**

细胞凋亡或程序性细胞死亡在维持体内平衡和去除损伤或恶性细胞中起主要作用。凋亡途径的不平衡与几个治疗重要的疾病领域有关，包括肿瘤学，心血管疾病和神经变性疾病。Smac 通过将其 N-末端序列 AVPI 插入 XIAP-caspase-9 相互作用袋中与 XIAP 相互作用，从而释放载脂蛋白-9 并引起细胞死亡。Wist 等研究人员用恶唑环代替一个肽键，旨在通过降低肽特性来增强药物活性，以与 AVPI/Smac 竞争以引起细胞凋亡。

![](https://pic4.zhimg.com/v2-36ff87f1b63eeb8d5f0fc2fa55c10317_b.jpg)

![](https://pic4.zhimg.com/80/v2-36ff87f1b63eeb8d5f0fc2fa55c10317_hd.jpg)

**4.基于拓扑的跃迁**

基于拓扑结构或形状的骨架跃迁的成功案例在文献中很少见。一个可能的原因是已经做了许多尝试，但大多数失败，因此没有发表。另一种可能性是当新的化学型与其模板显著不同时，科学家们可能将该过程视为虚拟筛选，而不是骨架跃迁。可以使用虚拟筛选产生骨架跃迁的类型，即虚拟筛选是进行骨架跃迁的一种技术。最终，骨架跃迁聚焦于发现新的核心结构，通常忽略侧链和靶标之间的潜在冲突，而虚拟筛选以整个分子为苗头化合物。

![](https://pic4.zhimg.com/v2-a557ca30ebff8a4d54f28015924612ff_b.jpg)

![](https://pic4.zhimg.com/80/v2-a557ca30ebff8a4d54f28015924612ff_hd.jpg)

**3 总结**

制药业面临巨大的挑战，主要是由于新药产量下降、药物价格压力和全球经济衰退造成的。另一方面，罕见病和被忽视疾病的医疗需求没有得到充分的解决。强烈需要更有效的方法来加快药物发现的步伐。随着近年来药物发现相关数据的爆炸式增长，通过充分利用现有信息，挖掘数据加速新药发现成为可能。

![](https://pic1.zhimg.com/v2-5701e3c206cb2182f73731c01710b838_b.jpg)

![](https://pic1.zhimg.com/80/v2-5701e3c206cb2182f73731c01710b838_hd.jpg)

骨架跃迁主要用于找到候选化合物或绕开知识产权保护，但是骨架跃迁方法通常不能预测候选化合物的潜力，故骨架跃迁往往与计算模拟和虚拟筛选联合使用。

![](https://pic4.zhimg.com/v2-acb74b66f244d4b04a158c0c53edfac7_b.png)

![](https://pic4.zhimg.com/80/v2-acb74b66f244d4b04a158c0c53edfac7_hd.png)

参考资料：

1.Sun H，Tawa G，Wallqvist A.Classification of scaffold-hopping approaches\[J\].Drug discovery today，2012，17(7)：310-324.

2.Wist A D，Gu L，Riedl S J，et al.Structure–activity based study of the Smac-binding pocket within the BIR3 domain of XIAP\[J\].Bioorganic & medicinal chemistry，2007，15(8): 2935-2943.

3.Velcicky J，Feifel R，Hawtin S，et al.Novel 3-aminopyrazole inhibitors of MK-2 discovered by scaffold hopping strategy\[J\].Bioorganic & medicinal chemistry letters，2010，20(3)：1293-1297.

[http://4.Li](https://link.zhihu.com/?target=http%3A//4.Li) S，Xu H，Cui S，et al.Discovery and Rational Design of Natural-Product-Derived 2-Phenyl-3，4-dihydro-2 H-benzo \[f\] chromen-3-amine Analogs as Novel and Potent Dipeptidyl Peptidase 4 (DPP-4) Inhibitors for the Treatment of Type 2 Diabetes\[J\].Journal of medicinal chemistry, 2016, 59(14): 6772-6790.

5.Bajorath J.Computational scaffold hopping：cornerstone for the future of drug design\[J\].2017.

## 计算骨架跃迁的发展及应用

**导语**

从生物活性化合物中提取的分子骨架在药物化学中备受关注。骨架跃迁（Scaffold Hopping）用于从母体化合物鉴定含有不同拓扑的骨架化合物，新化合物相对于母体化合物的不同核心结构和类似的生物活性，其扩大了用于产生先导化合物核心分子形状的范围。

![](https://pic1.zhimg.com/v2-36cccf327c354a4ad81b42f541d5e5d8_b.jpg)

![](https://pic1.zhimg.com/80/v2-36cccf327c354a4ad81b42f541d5e5d8_hd.jpg)

**1.骨架（Scaffolds）**

“骨架”概念广泛应用于药物化学和药物设计中，分析和比较活性化合物与衍生物的核心结构。骨架可以用算术方式定义，也可以根据药物化学知识定义。通过除去取代基从化合物获得骨架，同时保留环之间的环体系和连接物片段。因此，每个含环化合物产生支架，并且向化合物中添加环总是产生新的支架。最近，引入了替代骨架方法以进一步增加计算产生的骨架的药物化学相关性。该方法从衍生物提取骨架而不是单个化合物，并考虑反应信息。骨架定义的偏好可能不同，但是，对于骨架的系统计算分析，正式定义的一致应用至关重要。

![](https://pic1.zhimg.com/v2-16220ec59d05a6c35aeb194ee5c67f84_b.jpg)

![](https://pic1.zhimg.com/80/v2-16220ec59d05a6c35aeb194ee5c67f84_hd.jpg)

**2 骨架跃迁（Scaffold Hopping）**

“骨架跃迁”概念源于计算化学和化合物的[虚拟筛选](https://link.zhihu.com/?target=http%3A//www.yinfotech.cn/services/drug-design/vs)。它是指寻找具有相似活性但含有不同核心结构的化合物。除活性外，还可考虑其他分子性质。因此，骨架跃迁的目标是识别在活性/性质空间上相似的结构多样化的化合物。可以在化学知识的基础上尝试核心结构的修饰或替换，但是搜索骨架跃迁需要计算框架。从活性化合物提取的骨架可以呈现出从化学上非常相似的骨架到其他与结构无关骨架的广泛的结构关系。在药物化学和药物设计中，计算骨架跃迁的目的在于找到能够具有线性构效关系或天然活性化合物的替代物。此外，制药行业也试图用已知的候选药物或药物来鉴别与其具有活性特性的化合物，但与化学结构有很大的不同，从而有助于建立竞争性的专利。

![](https://pic3.zhimg.com/v2-d682988764d802573dceb041bbb2614a_b.jpg)

![](https://pic2.zhimg.com/v2-28ad158b964fb50045578a27df39da19_b.jpg)

**3.骨架跃迁的新进展**

计算骨架跃迁的最新趋势包括聚焦于天然产物作为起点和活性化合物中片段替代方法。虽然传统地骨架跃迁计算在完整的化合物水平上进行，但是已经引入了新的搜索工具和描述符，用于直接比较骨架和识别有潜力的替代物。在这些情况下，用骨架相似性评估替代分子或[药效团](https://link.zhihu.com/?target=http%3A//www.yinfotech.cn/services/drug-design/pharmacophore)相似性比较。

![](https://pic3.zhimg.com/v2-fe2ed2f034c7125687515bfd09d55246_b.jpg)

**4.研究案例：骨架跃迁用于 T 型钙通道**[抑制剂设计](https://link.zhihu.com/?target=http%3A//mp.weixin.qq.com/mp/homepage%3F__biz%3DMzI5MDIyNDg1Mg%3D%3D%26hid%3D15%26sn%3D7bc8f30c69d81f8d2ea39e505eda1f9e%23wechat_redirect)

T 型 Ca 2+通道是以通道短暂或快速灭活为特征的电压门控钙通道。分子克隆研究已经鉴定了 T 型钙通道家族中的三个成员，抑制 T 型 Ca 2+通道在治疗疼痛，癫痫，睡眠障碍，原发性震颤，帕金森病和其他神经障碍方面具有巨大的治疗潜力。然而，缺乏真正具有选择性的小分子工具，阻碍了 T 型 Ca2 +通道的小分子药理学抑制的靶标验证。

![](https://pic1.zhimg.com/v2-835bb9cc78c41fcabd863e58369f8cec_b.jpg)

来自默克的 T 型 Ca2+通道脱氟类似物抑制剂，其具有显著的药理活性，尤其在离子通道靶标。类似物保持了 T 型 Ca2+通道活性，但是氟原子降低了哌啶碱度，改善了离子通道的药理学性质。研究人员使用柔性比对软件检查分子模型拓扑重叠，模拟哌啶核的恶二唑核心，但关键的氢键供体和受体不能对齐。基于这一观察，研究人员的策略是运用骨架跃迁获取具有类似效力的 T 型 Ca2+通道抑制剂。规避默克化合物专利，不受知识产权约束，发现新的探针小分子。

![](https://pic4.zhimg.com/v2-877e09c3859d7d581fe91d3ba6ec598f_b.jpg)

基于上面的认识模拟其他化合物变体，能够规避默克化合物的知识产权。第一个系列之一以手性 3-氨基取代的哌啶为中心， 制备和测试了几个衍生物，证明了 R-对映异构体是无活性的。

![](https://pic1.zhimg.com/v2-ea818b5868ac83be73099bdea679988c_b.jpg)

有趣的是，3,5-二氯苯甲酰胺的优化在 S-对映异构体提供弱拮抗剂，但提供了 2-氯-4-氟苯氧基酰胺有效的 T 型 Ca2+通道拮抗剂。尽管对映体特异性活性值得注意，但辅助药理学又是一个问题。

![](https://pic3.zhimg.com/v2-a6e2bb816707b7a4929ae6e76c5926d6_b.jpg)

**5.总结**

毫无疑问，计算骨架跃迁目前仍然是停滞不前的，但是为了实现其潜在的未来，成功的基准测试需要被改进。为此，实际评估方法的性能能够更好地了解骨架跃迁的本质和靶标相关的约束，进一步提高实际应用的成功率。到目前为止，计算骨架跃迁和其他计算方法都没有将药物设计提升到一个新的水平。然而，骨架跃迁属于药物设计方法的核心，这一领域的任何实质性的新发展都将引起高度的兴趣。

![](https://pic3.zhimg.com/v2-a751446ba09b0bf41f9328bd2bec1c4e_b.jpg)

参考资料：

1.Bajorath J.Computational scaffold hopping：cornerstone for the future of drug design\[J\].2017.

2.Mamidala R，Majumdar P，Jha K K，et al.Corrigendum: Identification of Leishmania  
donovani Topoisomerase 1 inhibitors via intuitive scaffold hopping and bioisosteric modification of known Top 1 inhibitors\[J\].Scientific reports，2016，6：28120.

3.Engers D W，Field J R，Le U，et al.Discovery，synthesis，and structure− activity  
relationship development of a series of N-(4-Acetamido) phenylpicolinamides as positive allosteric modulators of metabotropic glutamate receptor 4 (mGlu4) with CNS exposure in rats\[J\].Journal of medicinal chemistry，2011，54(4)：1106-1110.

## 药物设计与发现中的 CADD 技术

**同源模建**

**Homology modeling**

基于同源蛋白质的 3D 结构，为没有晶体结构的靶标构建三维结构。

**主要程序：**

![](https://pic1.zhimg.com/v2-51516011ffc4bc192f992e17430fb2c4_b.jpg)

![](https://pic1.zhimg.com/80/v2-51516011ffc4bc192f992e17430fb2c4_hd.jpg)

**分子对接**

**Molecular Docking**

预测化合物与靶标的结合模式和近似结合能。

**主要程序：**

![](https://pic3.zhimg.com/v2-1fa273f4f0e5e0df7513f636041ed5e6_b.jpg)

![](https://pic3.zhimg.com/80/v2-1fa273f4f0e5e0df7513f636041ed5e6_hd.jpg)

**基于受体的虚拟筛选**

**Structure-based virtual screening**

基于分子对接技术从化合物库中筛选识别特定靶标的活性化合物。

**主要流程：**

![](https://pic4.zhimg.com/v2-30c605ffa091854dfc7e9db689565253_b.jpg)

![](https://pic4.zhimg.com/80/v2-30c605ffa091854dfc7e9db689565253_hd.jpg)

**药效团模型**

**Pharmacophore modeling**

提供生物大分子与配体进行相互识别必需的分子特征的描述。一般分为基于配体的药效团模型和基于结构的药效团模型。

**主要程序：**

![](https://pic4.zhimg.com/v2-29cfe82d16f926ce6821466ec0d7fc0b_b.jpg)

![](https://pic4.zhimg.com/80/v2-29cfe82d16f926ce6821466ec0d7fc0b_hd.jpg)

**基于配体的虚拟筛选**

**Ligand-based virtual screening**

基于药效团建模技术或者分子的 2D 与形状相似性筛选，从化合物库中识别特定靶标的活性化合物。

**主要流程：**

![](https://pic4.zhimg.com/v2-dcfd812ed7dc0e5ed60490207c348adb_b.jpg)

![](https://pic4.zhimg.com/80/v2-dcfd812ed7dc0e5ed60490207c348adb_hd.jpg)

**分子动力学**

**Molecular dynamics**

基于分子力学的模拟，了解蛋白质或其他生物大分子的动态行为，分析基于结构的药物设计中药物靶标的柔性并计算化合物与靶标结合的亲和力。

**主要程序：**

![](https://pic4.zhimg.com/v2-7633ddbbecf79c23ad9fe93987bce4e3_b.jpg)

![](https://pic4.zhimg.com/80/v2-7633ddbbecf79c23ad9fe93987bce4e3_hd.jpg)

**二维定量构效关系**

**2D-QSAR**

寻找可用于从化合物的分子结构预测某些性质的模型。

**主要工具：**

基于化学信息学工具包（ChemmineR 和 OpenBabel 等）计算描述符建立二维定量构效关系模型。

**三维定量构效关系**

**3D-QSAR**

用于定量预测分子与靶标活性位点之间相互作用的技术，在该技术中利用 3D 构象衍生信息。

**主要程序：**

Open3DQSAR

SYBYL

MOE

**量子力学**

**Quantum mechanics**

基于电子轨道方法和第一性原理优化配体蛋白质-配体复合物的结构，提高对接的准确性并计算结合自由能等。

**主要程序：**

![](https://pic4.zhimg.com/v2-219d91dab32220f0c478ab7045102edf_b.jpg)

![](https://pic4.zhimg.com/80/v2-219d91dab32220f0c478ab7045102edf_hd.jpg)

**ADMET 预测**

**ADMET prediction**

预测人体内化学物质的吸收、分布、代谢、排泄和毒性，为药物的临床研究提供指导。

**主要程序：**

![](https://pic1.zhimg.com/v2-e5942ad101a68a82efdfd4d490caecc0_b.jpg)

![](https://pic1.zhimg.com/80/v2-e5942ad101a68a82efdfd4d490caecc0_hd.jpg)

**反向找靶**

**Target Fishing**

基于反向分子对接、药效团模型搜索和基于配体分子相似性分析发现现有活性化合物和天然产物的新靶点、解释药物的分子机制和药物重新定位找到药物的替代适应症，以及检测药物不良反应和药物毒性。

**主要程序：**

PharmMapper

DRAR-CPI

TarFisDock

SwissTargetPrediction

---

**参考资料**

1.  Riniker S, Landrum G A. Landrum, G.A.: Open-source platform to benchmark fingerprints for ligand-based virtual screening. Journal of Cheminformatics 5, 26\[J\]. Journal of Cheminformatics, 2013, 5(1):26.
2.  Liao C, Sitzmann M, Pugliese A, et al. Software and resources for computational medicinal chemistry\[J\]. Future, 2011, 3(8): 1057-1085.

## 如何完成同源建模并有效应用

从氨基酸序列预测蛋白质的 3D 结构仍然是一个基本的科学问题，可以使用不同的方法实现，而最准确的方法是“比较”或“同源”模建，因为通过实验方法测定蛋白质结构是耗时的，并不是所有蛋白的结构都能成功测定。

**构建超过 50％序列相似性的模型对于药物发现是足够准确的；25％至 50％之间的相似性有助于设计诱变实验。**

![](https://pic3.zhimg.com/v2-bf60b2565a9c9b194a6f6c0303bdb62a_b.jpg)

![](https://pic3.zhimg.com/80/v2-bf60b2565a9c9b194a6f6c0303bdb62a_hd.jpg)

**同源模建步骤**

同源模建一般包含多个步骤：

1.模板的确定；

2.单序列或多序列比对；

3.基于模板 3D 结构的靶标模型构建；

4.模型优化；

5.模型验证。

![](https://pic1.zhimg.com/v2-4834d2e698c7218431faafd0454105d8_b.jpg)

![](https://pic1.zhimg.com/80/v2-4834d2e698c7218431faafd0454105d8_hd.jpg)

**1.模板的识别与对比**

从 NCBI 蛋白数据库获取氨基酸序列，使用 BLAST 进行数据库搜索以优化和查询局部比对，给出与序列匹配的已知蛋白质结构的列表。当序列一致性远低于 30％时，BLAST 找不到模板；BLAST 的同源性命中不可靠。即使选择了正确的模板，对齐误差也是比较建模偏差的主要原因。

由于使用单个模板进行序列比对难以对齐，可使用多种类似序列，通过 BLAST 搜索多重序列进行更准确的比对，从而形成更好的模型。

**2.模型构建**

目标模板对齐之后，同源模建的下一步是模型构建，可以使用各种方法为靶标构建蛋白模型，通常使用刚体组装、段匹配、空间约束和人工进化来进行建模。

刚体组装模型建立依赖于将蛋白结构解剖为保守的核心区域、连接蛋白的可变环和装饰骨架的侧链。模型精度基于模板选择和对准精度。除此之外，基于对目标序列结构的约束或，利用其对相关蛋白结构的比对作为指导，满足空间约束的建模。约束的产生是基于模板中的对齐残基与目标结构之间对应距离相似的假设。

**3.Loop 建模**

同源蛋白在序列中具有缺失或插入，称为环（Loop），其结构在进化过程中不保守。环被认为是发生插入和缺失的蛋白可变区域，通常决定蛋白质结构的功能特异性。环建模的准确性是研究蛋白-配体相互作用同源模型的主要因素，建模的环结构必须在几何学上与蛋白质结构的其余部分一致。

![](https://pic2.zhimg.com/v2-f1ce3c57c7d7932df8e6256dddc0e6bd_b.jpg)

![](https://pic2.zhimg.com/80/v2-f1ce3c57c7d7932df8e6256dddc0e6bd_hd.jpg)

**4.侧链建模**

侧链建模是同源性预测蛋白质结构的重要一步。

侧链预测涉及将侧链放置在从母体结构获得的坐标上，或由从头建模模拟或两者的组合产生。蛋白质侧链倾向于以有限数量的旋转异构体的低能量构象存在。在侧链预测方法中，通过使用定义的能量函数和搜索策略，基于优选的蛋白质序列和给定的骨架坐标选择旋转异构体。可以通过所有原子的均方根偏差（RMSD）发现正确的旋转异构体来分析侧链质量。

**5.模型优化**

模型优化是一个非常重要的任务，需要对构象空间进行有效抽样，且是准确识别近自然结构的手段。

同源模型建立过程通过一系列氨基酸残基取代、插入和缺失进化。模型优化基于调整对齐、环建模和侧链建模，模型优化过程常使用分子力学力场进行能量最优化，且为了进一步改进，可以应用诸如分子动力学、蒙特卡罗和基于遗传算法的取样技术。

![](https://pic2.zhimg.com/v2-0f0ef62b85a6216b584b54a5f53986e5_b.jpg)

![](https://pic2.zhimg.com/80/v2-0f0ef62b85a6216b584b54a5f53986e5_hd.jpg)

**6.模型验证**

同源建模的每个步骤都依赖之前的过程。因此，错误可能会被意外引入和传播，因此蛋白质的模型验证和评估是必要的。

蛋白质模型可以作为一个整体及个别区域进行评估。最初，模型的折叠可以通过与模板序列的相似性来评估，也可以使用拉氏图（Ramachandran）进行模型质量评估。

**同源模建的应用**

同源模建广泛应用于基于结构的药物设计，随着可用晶体结构的数量增加，同源模建的重要性也在增加。

同源模建的其他几个应用：（1）研究突变的影响；（2）鉴定蛋白质上的活性和结合位点；（3）寻找给定结合位点的配体；（4）设计给定结合位点的新配体；（5）预测抗原表位；（6）蛋白-蛋白对接模拟等。

多年来已经建成了大量的同源模型。靶标包括参与人类生物学和医学的抗体和许多蛋白质。

**应用案例**

人类葡萄糖转运蛋白 1（hGLUT1 或 SLC2A1）是一种在肝脏、肠道、肾脏和大脑中发现的促进性膜转运蛋白，其转运 D-葡萄糖和 D-半乳糖。hGLUT1 的遗传变异与许多疾病和代谢紊乱有关，因此，hGLUT1 是一种新的治疗靶点。本研究基于大肠杆菌木糖转运蛋白 XylE 的 X 射线晶体结构，构建 hGLUT1 的同源模型。基于 hGLUT1 同源模型进行可购买化合物库的虚拟筛选，随后进行细胞实验测试发现了七种以前未知的 hGLUT1 配体，IC50 值范围为 0.45μM 至 59μM。

![](https://pic4.zhimg.com/v2-17ad3dccd9616daca1a80440a29c057b_b.jpg)

![](https://pic4.zhimg.com/80/v2-17ad3dccd9616daca1a80440a29c057b_hd.jpg)

基于结构的药物设计技术过去由于缺乏靶蛋白的晶体结构而受到阻碍。在这种情况下，目前最好的选择是建立整个蛋白的同源模型。

同源模建的主要目的是从其序列中预测结构，其精度与实验结果相似，提供了一种可行的成本效益替代方法来生成模型。随着实验确定结构数量的增加，同源模型构建的作用和可靠性将继续增加。同源模建是研究配体-受体相互作用、酶-底物相互作用、诱变实验、引导优化、环结构预测和识别命中的强大工具。

参考文献：

1\. Vyas V K, Ukawala R D, Ghate M, et al. Homology modeling a fast tool for drug discovery: current perspectives\[J\]. Indian journal of pharmaceutical sciences, 2012, 74(1): 1.

2\. Bohnuud T, Luo L, Wodak S J, et al. A benchmark testing ground for integrating homology modeling and protein docking\[J\]. Proteins: Structure, Function, and Bioinformatics, 2017 85(1): 10-16.

3\. Ung P M U, Song W, Cheng L, et al. Inhibitor discovery for the human GLUT1 from homology modeling and virtual screening\[J\]. ACS chemical biology, 2016, 11(7): 1908-1916.

4\. 部分图片来自网络。

## 多任务深度学习对制药公司是否实用？

**导语**

近年来，深度学习不仅对计算机技术产生了前所未有的影响，而且已经开始影响药物发现。2012 年，默沙东公司（MSD）举办了 Kaggle 竞赛，以评估模型提高定量构效关系（QSAR）方法预测准确度的能力。获奖作品使用多任务深度网络实现了相对于基准线 15％的改进。

尽管有很多相关研究，但是多任务深度学习在制药和生物技术行业尚未被广泛采用。深层架构的软件实现太具有挑战性和对多任务深度学习的稳健性不甚了解是两个主要障碍。因此，解决这两个主要障碍可以帮助制药公司更好地使用多任务深度学习这一工具。

DeepChem 提供了基于 python 语言的用于构建多任务深度学习模型的应用程序编程接口（API）。这个 API 面向对象并在主流的机器学习包（如 Scikit-Learn18 和 Keras11）的接口上进行建模。本文基于 DeepChem 实现了一个高质量的多任务深度网络，用来构建四种广泛的药物数据集集合（Kaggle、Factors、Kinase、UV）的多任务模型。用户可以使用简单的 Python 脚本来构建、训练和评估这个多任务深层网络。

![](https://pic2.zhimg.com/v2-87dba58eecb57c37f75bc830aeacef2d_b.jpg)

![](https://pic2.zhimg.com/80/v2-87dba58eecb57c37f75bc830aeacef2d_hd.jpg)

**图 1.使用 DeepChem 创建多任务深层网络的示例代码**

**研究过程**

**1.数据集的准备**

**A.数据描述**

首先，对来自 MSD 的四个数据集集合进行建模：

Kaggle 集合是包含了 15 种酶抑制剂和对约 10 万种化合物的 ADME / Tox 数据的集合；

Factors 集合测量了约 1500 个 MSD 的内部化合物对 12 种丝氨酸蛋白酶（其中一些是血液凝固因子）抑制作用的 IC50；

激酶集合测量了约 2500 个内部化合物对 99 种蛋白激酶抑制作用的 IC50；

UV 数据集合测试了在 190 个吸收波长（210-400nm）范围内的 10000 个化合物。

这些数据集合使用预先计算的 AP，DP（原子对，供体对）描述符,每个数据集合都存储为描述符文件和活性文件两个文件从 MSD 转到斯坦福大学进行分析。

**B.数据拆分**

在 MSD 所有的数据集都被分成了训练集、验证集和测试集。Kaggle 和 UV 数据集合使用时间拆分法按 75/25 的比例分入训练组和验证/测试组，因子和激酶数据集合使用邻近拆分法按 75/25 的比例进行数据拆分。

训练集用于训练机器学习模型，验证集用于调整模型超参数，测试集用于训练模型的最终评估。

**2.机器学习模型**

接着，在 MSD 的内部数据集上测试了五种机器学习算法：随机森林（Random Forest, RF）、单任务架构、多任务架构、渐进式架构和旁路架构。

![](https://pic2.zhimg.com/v2-3f2be5cc846eb738c75c769a96984429_b.jpg)

![](https://pic2.zhimg.com/80/v2-3f2be5cc846eb738c75c769a96984429_hd.jpg)

**图 2.部分深层体系结构的图形描述**

**3.模型评价标准**

研究使用 Pearson 相关系数的平方（R2）来评估模型里每个任务的相关性即模型性能。对于多任务模型，采用数据集中所有任务的平均 R2。计算每个任务 R2 相对于 RF 基线的最大增加或减少量作为补充评价标准，以此避免平均 R2 评价模型性能太过于粗糙。原始数据集内的任务间相关性用数据集合中任务之间的所有成对 R2 分数的直方图来表示。

**4.实验结果**

在四个药物数据集合上，多任务架构比渐进式、单任务和旁路架构更强大。大部分在 Kaggle 和激酶数据集上的测试均优于 RF。在多因素和 UV 数据集集合中，得到改进的数据相对较少，这可能是由于任务间相关性较低的原因，部分任务中的改进相当显著，但其他地方只有适度的性能下降。与其他深度架构相比，多任务架构最坏情况下的性能下降程度是最低的。

![](https://pic4.zhimg.com/v2-9f7489a76a8f4e70b2ef72a81c9c0ea7_b.jpg)

![](https://pic4.zhimg.com/80/v2-9f7489a76a8f4e70b2ef72a81c9c0ea7_hd.jpg)

![](https://pic4.zhimg.com/v2-6822115d15b89c30f899f8182220840f_b.jpg)

![](https://pic4.zhimg.com/80/v2-6822115d15b89c30f899f8182220840f_hd.jpg)

![](https://pic1.zhimg.com/v2-8cf7f59cf3f9cff15f1b7b00647739d4_b.jpg)

![](https://pic1.zhimg.com/80/v2-8cf7f59cf3f9cff15f1b7b00647739d4_hd.jpg)

**图 3.在 Kaggle 数据集集合上的各模型表现**

![](https://pic1.zhimg.com/v2-76e9e5c2b6a777d73a325b6a78ed27d8_b.jpg)

![](https://pic1.zhimg.com/80/v2-76e9e5c2b6a777d73a325b6a78ed27d8_hd.jpg)

![](https://pic3.zhimg.com/v2-5818d1702e7446c1d9786ee336520fe2_b.jpg)

![](https://pic3.zhimg.com/v2-2a228853799025a703af3da26d450e62_b.jpg)

![](https://pic3.zhimg.com/v2-e999eff0b3811c16d228917466bf081a_b.jpg)

**图 4.在多因素数据集集合上的各模型表现**

![](https://pic2.zhimg.com/v2-c4a69b67f5552fc2edaa82e11d2ee0a1_b.jpg)

![](https://pic4.zhimg.com/v2-ff89c4f793915f42644b60675abf0227_b.jpg)

![](https://pic1.zhimg.com/v2-154f0a652e38172909bd1e3820d57b14_b.jpg)

**图 5.在激酶数据集集合上的各模型表现**

![](https://pic1.zhimg.com/v2-7cc28493adaad53d80b2265001398340_b.jpg)

![](https://pic4.zhimg.com/v2-93d7c30db28c9755a94fbefdcf073dfb_b.jpg)

**图 6.在 UV 数据集集合上的各模型表现**

![](https://pic4.zhimg.com/v2-cecf2b3123c873fc0cfa8629c464a59f_b.jpg)

**图 7.所有集合中多任务模型表现优于单任务模型的比例**

**总结**

基于 DeepChem 的开源深度网络可以定性和定量地重现文献中先前分析的 Kaggle 集合的深层模型的性能。鲁棒性（robustness）方面，多任务深层网络可以提供强大的改善，特别是对于具有高度内部任务相关性的集合。这表明多任务架构可以成功应用于药物发现中出现的许多数据集，多任务深度学习可以广泛用于商业药物研发，具有实用性。

参考文献：

Ramsundar,B.;Liu,B.;Wu,Z.;Verras,A.;Tudor,M.;Sheridan,R.P.;Pande,V.,Is Multitask Deep Learning Practical for Pharma? Journal of chemical information and modeling 2017, 57 (8), 2068-2076.

## 借助深度学习增强基于对接的虚拟筛选

**导语**

虚拟筛选是一种针对已知药理靶标的潜在活性化合物的特性给出预定义标准，从而对分子的虚拟组成进行过滤或预过滤的方法，通常有基于配体和基于结构两种虚拟筛选方法。

基于对接的虚拟筛选方法（DBVS）是后者广泛应用的其中一种形式，通过将化合物库中的每种化合物插入到已知 3D 结构的靶受体的特定区域中来选择更高活性的配体。评价插入质量的打分函数性能不高是对接方法的核心障碍。

本文提出了一种基于深度卷积神经网络的方法（DeepVS）来改善 DBVS。

![](https://pic3.zhimg.com/v2-1e5ea21b34b38a586f53459d3c6a7542_b.jpg)

![](https://pic3.zhimg.com/80/v2-1e5ea21b34b38a586f53459d3c6a7542_hd.jpg)

**实验准备与方法介绍**

**1.DeepVS**

DeepVS 由 1 个输入层，2 个隐藏层和一个输出层组成。其中输入层用来输入描述化合物-蛋白质复合物结构的数据，隐藏层用来从原子上下文集中提取特征并将其转化为分布向量，输出层将复合体的表示作为 softmax 分类器的输入，用来产生能够区分活性配体和诱饵（decoy）的评分。

![](https://pic3.zhimg.com/v2-83ef6e26ca3b5c2cc2faaaad7b99efaa_b.jpg)

![](https://pic3.zhimg.com/80/v2-83ef6e26ca3b5c2cc2faaaad7b99efaa_hd.jpg)

图 1.DeepVS 架构（以化合物 THM 和蛋白 TK 的复合物为例）

A.原子上下文的表示：

原子的上下文是从与之最近的化合物和蛋白上的原子中提取的一组基本特征。DeepVS 中的第一个隐藏层将原子上下文的每个基本特征值转换为实值向量（也称为嵌入），并在训练网络之前用随机数初始化。

![](https://pic1.zhimg.com/v2-ba68b638bc6bed9f2690a16e28dd108c_b.jpg)

图 2.THM 中 N3 原子的上下文及其原子类型矩阵（atm）的构造说明

B.化合物-蛋白复合物的表示：

DeepVS 中的第二个隐藏层是一个卷积层，从复合物中所有原子的上下文表示中提取更多的抽象特征，并将这些信息汇总到一个固定长度的向量 r 中。用卷积层的输出 r 表示化合物蛋白复合物。

C.化合物-蛋白复合物的评分：

用 p（0\|x）和 p（1\|x）表示为化合物分别是诱饵或配体的条件概率。给出从对接获得的化合物 - 蛋白质复合物数据。在虚拟筛选实验期间，对配体类别为 1 即活性配体的可能性进行评分并排名。 得分越大，化合物是活性配体的可能性越大。

D.训练 DeepVS：

用随机梯度下降（SGD）算法使包含配体和诱饵复合物的训练集 D 的损失函数最小化。

**2.实验装置**

数据集用包含 6 类共 40 个受体的 DUD（[http://blaster.docking.org/dud/](https://link.zhihu.com/?target=http%3A//blaster.docking.org/dud/)），两款对接软件分别为 Autodock Vina 1.1.2 和 Dock 6.6。

验证方法：

用软件将蛋白质与配体或诱饵化合物对接以产生复合物，每一次运行，都将一个受体排除在测试集外，其他受体用作训练集，称为留一法交叉验证。

![](https://pic3.zhimg.com/v2-68200afb213db33d6f09de6c111ecc3e_b.jpg)

图 3.留一法交叉验证

**3.评价标准**

富集因子（EF），受试者工作特征曲线（ROC）及其曲线下的面积（AUC）。

**4.实验结果**

进行严格的评估和留一法交叉验证后，发现 DeepVS 在 AUC、 ROC 和 EF 方面均优于两款对接软件。此外，使用 Autodock Vina1.1.2 的输出得到的 DeepVS 的 AUC 达到 0.81。这是迄今报道的使用 DUD 中 40 个受体的虚拟筛选结果中，最好的 AUC 数据。

**总结**

DeepVS 不需要人为定义，它使用单个对接程序的输出即取得良好效果，这些特点使得 DeepVS 成为有吸引力的虚拟筛选的方法。而且深度学习系统通常用大量的数据进行训练，如果给训练集添加更多的数据，DeepVS 的性能将得到更大改进。

此外，这项工作有一些非常创新的想法，例如，用卷积层处理原子上下文来表示复合物以及原子和氨基酸嵌入的思想都可以为深度学习用于生物信息学提供灵感。

参考文献：

Pereira,J.C.;Caffarena,E.R.;Dos Santos,C.N.,Boosting Docking-Based Virtual Screening with Deep Learning.Journal of chemical information and modeling 2016,56 (12),2495-2506.

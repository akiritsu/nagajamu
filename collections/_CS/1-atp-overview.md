---
title: "An Overview of Automated Theorem Proving"
---



## Process
ONGONGING: SF

TODO: planned

## Resources

[**Certified Programming with Dependent Types (CPDT)**](https://www.amazon.com/Certified-Programming-Dependent-Types-Introduction/dp/0262026651/ref=sr_1_fkmrnull_1?keywords=Certified+Programming+with+Dependent+Types&qid=1555168397&s=books&sr=1-1-fkmrnull), 2019, Adam Chlipala

- **Readership:** _undergraduates, professionals_
- **Prerequisites:**: Haskell programming, discrete mathematics, logic, _Types and Programming Language_(formal semantics and program verification)
- This book provides an introduction to the Coq software for **writing and checking mathematical proofs**. It takes a practical engineering focus throughout, emphasizing techniques that will help users to build, understand, and maintain large Coq developments and minimize the cost of code change over time.
- **Topics:** Two topics, rarely discussed elsewhere, are covered in detail: **effective dependently typed programming** (making productive use of a feature at the heart of the Coq system) and **construction of domain-specific proof tactics**. Almost every subject covered is also relevant to interactive computer theorem proving in general, not just program verification, demonstrated through examples of verified programs applied in many different sorts of formalizations.
- Free PDF Copy: http://adam.chlipala.net/cpdt/

[**Interactive Theorem Proving and Program Development Coq’Art: The Calculus of Inductive Constructions (Coq'Art)**](https://www.amazon.com/Interactive-Theorem-Proving-Program-Development/dp/3540208542/ref=sr_1_fkmrnull_1?keywords=Interactive+Theorem+Proving+and+Program+Development+Coq%E2%80%99Art%3A+The+Calculus+of+Inductive+Constructions&qid=1555168417&s=books&sr=1-1-fkmrnull), 2004th Edition, Yves Bertot, Pierre Castéran

- **Readership:** _professionals_
- A practical introduction to the development of proofs and certified programs using Coq. An invaluable tool for researchers, students, and engineers interested in formal methods and the development of zero-fault software
- Resources: https://www.labri.fr/perso/casteran/CoqArt/

[**Mathematical Components**](https://math-comp.github.io/mcb/), Assia Mahboubi, Enrico Tassi

- **Readership:** _experienced Coq users_
- **Prerequisites:**: Coq and Ssreflect programming
- An Introduction to the Mathematical Components library of Coq System.
- Free PDF Copy: https://math-comp.github.io/mcb/

## Highlighted Topics and Papers

TODO: 

## Facts

### 为什么机器验证的形式化证明没有被数学界广泛采用

综合来说，形式化证明在数学上还处于启蒙阶段，但相信这样严格、精确、高可信的证明方式在以后会有着更大的影响力也能被更多的数学家所接受。

目前而言，形式化证明的确没有广泛的被数学届采用。主要原因包括：

*   自动化程度。能够用来形式化数学的定理证明器通常基于有相当表达力的逻辑（如HOL和CIC等），而在这类逻辑上的全自动推理还是相当困难的，与之相对的是弱表达力但是强自动化的逻辑如一阶逻辑甚至布尔逻辑。不可避免的，在高表达力的逻辑下进行证明需要相当的人工引导，所以这类证明系统被称之为交互式定理证明器(interactive theorem prover)。如何提高自动化（减少人工）一直是该领域的研究方向之一，而（提高）自动化的方法主要基于两类：a) 在不影响正确(soundness)的前提下，把一部分高表达力的逻辑下的问题转化到高自动化的逻辑中，并用成熟的自动定理证明器(如Z3,CVC4,Vampire,E,Spass等)来求解；b) 针对特定种类问题实现特定的策略(tactic), 比如当我们在定理证明中里遇到这样的一阶实数类问题 ![\forall x \in \mathbb{R}.\, x^2+2 x + 1\geq0](https://www.zhihu.com/equation?tex=%5Cforall+x+%5Cin+%5Cmathbb%7BR%7D.%5C%2C+x%5E2%2B2+x+%2B+1%5Cgeq0)该如何解决？(目前的主流证明器中方法是sums-of-suquares，有兴趣的同学可以自行搜索)。尽管在过去三十年定理证明器中的自动化程度已经有了长足的提升，我们还是希望可以进一步的减少形式化证明的成本。目前而言，在已有前置定理的情况下，在Isabelle证明器中形式化分析类的证明平均一页需要一到两周。
*   数学定理的证明是有先后的，比如我们只能在形式化了Cauchy’s Integral Theorem之后才能开始Cauchy’s Residue Theorem以及Prime Number Theorem的证明。考虑到目前已被形式化的结果离前沿数学还有相当的距离，在这个方面我们还需要等待形式化的结果在各主流定理证明器中的积累。当然我们也可以直接假设一些重要的结果，不过这样会极大地损害我们对当前证明结果正确性的信心，毕竟我们是希望每一条证明出来的定理都能基于定理证明器核(kernel)中假设的显而易见的公理。
*   用户习惯。一定年纪的传统数学家还是比较难以接受在定理证明器中形式化自己的证明。所幸，不少新一代的数学／计算机学家对形式化证明已有一定的了解，包括CMU,Cambridge在内的大学都开设了相关的课程。一个做类型理论(type theory)的大佬曾经开玩笑说：“我们无法教授现在的数学家们形式证明，我们只要等待这一代数学家死掉了就好”(We can’t teach them (mathematicians) proof assistants. We just need to wait for them to die out.)。
*   交互界面，证明管理。形式化证明和码代码(C++,Java)没有本质上的区别，这里面都要涉及命名、重构、函数（定理）搜索等问题。对于写代码我们有包括Visual Studio等的大型集成开发环境(IDE),相比之下基于Emacs(Coq, HOL, PVS) 和jEdit(Isabelle)的定理证明开发环境还略显不足。
*   各主流的证明器采用不同的底层逻辑与基础定义。证明器有着不同的底层逻辑，包括基于集合论的Mizar (untyped set theory)和Isabelle/HOL(simply-typed set theory)，与基于类型论的Coq。 除以0的问题：Isabelle中定义x/0=0,Coq里通过依赖类型(dependent type)的方式要求用户排除这种情况。不同的证明范式给统一的数学形式化也造成了一定的困难。

尽管如此，形式化证明精确(no ambiguity)，高可信度(almost no “obviously” / gaps / bugs)且在一些时候相对可读(legible)的特点已经在数学界引起了不少人的注意。

比如，以下是一个在Isabelle定理证明器中,关于质数的平方根不是有理数的证明：

![](https://pic2.zhimg.com/50/v2-9641a1a6be3c1baa08c399814c745ab9_hd.jpg)

![](https://pic2.zhimg.com/80/v2-9641a1a6be3c1baa08c399814c745ab9_hd.jpg)

在Isabelle定理证明器的支持下，计算机能理解以上的证明并且能检查每一步推理的正确性（基于所假设的公理）。另外，这样的机械化证明也具有了一定的可读性(human readable)：完全不懂形式化证明的同学，也可以在不运行证明器的情况下对以上证明的思路有大致的概念。

另外一个例子。在Isabelle/HOL中，我们已经有了对Jordan Curve Theorem的形式化,其命题表述如下(当然证明就不在这里展开了)：

![](https://pic2.zhimg.com/50/v2-9189723e4d77b280bf453b05c97b4465_hd.jpg)

![](https://pic2.zhimg.com/80/v2-9189723e4d77b280bf453b05c97b4465_hd.jpg)

形式化证明的精确性体现在命题中各个函数都是被准确地机械化定义的，从而命题本身也不会有模凌两可的情况。比如其中的“有界”(bounded)定义如下：

![](https://pic1.zhimg.com/50/v2-5210164248eab80e5f39cf4de17e2fcc_hd.jpg)

![](https://pic1.zhimg.com/80/v2-5210164248eab80e5f39cf4de17e2fcc_hd.jpg)

而“边界”(frontier)有着如此定义：

![](https://pic3.zhimg.com/50/v2-890d603fbb0d07fd1f676cce684d2b1d_hd.jpg)

![](https://pic3.zhimg.com/80/v2-890d603fbb0d07fd1f676cce684d2b1d_hd.jpg)

![](https://pic2.zhimg.com/50/v2-e77526a53578fda5cbfee8a61bee2b2a_hd.jpg)

![](https://pic2.zhimg.com/80/v2-e77526a53578fda5cbfee8a61bee2b2a_hd.jpg)

![](https://pic2.zhimg.com/50/v2-49a0f5d8069d0fd862181ccfef491b67_hd.jpg)

![](https://pic2.zhimg.com/80/v2-49a0f5d8069d0fd862181ccfef491b67_hd.jpg)

  

另外，有兴趣的同学也可以看看前段时间在剑桥的Big Proof研讨会：

[Isaac Newton Institute for Mathematical Sciences](https://link.zhihu.com/?target=https%3A//www.newton.ac.uk/event/bpr)

不少大佬都在会上发表了自己对数学形式化的看法。其中一个比较有意思的设想是在大规模形式化还不现实的当下，鼓励大家在写数学文章的时候提交一个形式化的摘要（不需要证明，仅仅是对所解决问题的形式化表述）。

  


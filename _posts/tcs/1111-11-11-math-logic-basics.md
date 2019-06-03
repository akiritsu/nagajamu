---
layout: post
title: "Mathematical Logic and Theoretical Computer Science"
categories: TCS
tags: Logic Proof Set Recursion Model Computing
---
* content 
{:toc}

# Highlighted Resources

1. Teach Yourself Logic 2017: A Study Guide
2. Logic in Computer Science, Modelling and Reasoning about Systems

# 数理逻辑

## 数理逻辑
> 符号逻辑（皮亚诺以之区分哲学逻辑），元数学（现已归为证明论的子领域），symbolic logic，mathematical logic

* 数学的一个分支，研究对象是**对证明和计算这两个直观概念进行符号化以后的形式系统**。
* 与数学基础和理论计算机科学紧密相关。

## 形式系统

> formal system

* 用于以公理根据规则集（被称作logical calculus)推断定理的系统。
* 命题演算、一阶逻辑、lambda演算等都是形式系统。
* 数理逻辑中，核心概念都是由形式逻辑系统（formal logical system）表示的。这些系统尽管各不相同，但是他们都有一个共性：表达式仅在某一个特定的形式语言中有效。

## 模型论

> model theory

* 数理逻辑主要分支之一。

## 递归论

>可计算性理论, recursion theory, computability theory

* 数理逻辑主要分支之一。

## 证明论

> proof theory

* 数理逻辑主要分支之一。

## 公理化集合论
> 区别于朴素集合论（naive set theory），axiomatic set theory

* 数理逻辑主要分支之一。

## 命题逻辑

> 命题演算，句子演算，propositional calculus，propositional logic，statement logic，sentential calculus，sentential logic，zeroth-order logic

* 以逻辑运算符结合原子命题来构成代表“命题”的公式，以及允许某些公式建构成“定理”的一套形式“证明规则”。
* 命题逻辑是最简单的形式系统。

## 一阶逻辑

> 一阶断言演算，低级断言演算，量化理论，断言逻辑，谓词逻辑，First-order logic，predicate logic，first-order predicate calculus

* 命题逻辑的扩展，额外包含了断言和量化。

## 二阶逻辑

> second-order logic

* 一阶逻辑和二阶逻辑都使用了论域（有时叫做“域”或“全集”）的想法。论域是可以在其上量化的个体元素的集合。一阶逻辑只包括取值为论域的个体元素的变量和量词。
* 一阶逻辑的扩展，又被扩展为高阶逻辑和类型论。

## 高阶逻辑

> higher-order logic

* In mathematics and logic, a higher-order logic is a form of predicate logic that is distinguished from first-order logic by additional quantifiers and, sometimes, stronger semantics. Higher-order logics with their standard semantics are more expressive, but their model-theoretic properties are less well-behaved than those of first-order logic.
* The term "higher-order logic", abbreviated as HOL, is commonly used to mean higher-order simple predicate logic. Here "simple" indicates that the underlying type theory is simple, not polymorphic or dependent.

## 类型论

> type theory

* A type theory is any of a class of formal systems, some of which can serve as alternatives to set theory as a foundation for all mathematics. In type theory, every "term" has a "type" and operations are restricted to terms of a certain type.
* Type theory is closely related to (and in some cases overlaps with) **type systems**, which are a programming language feature used to reduce bugs. Type theory was created to avoid paradoxes in a variety of formal logics and rewrite systems.
* Two well-known type theories that can serve as mathematical foundations are Alonzo Church's **typed λ-calculus** and Per Martin-Löf's **intuitionistic type theory**.

## 亚结构逻辑

## 线性逻辑

## 相干逻辑

# 形式逻辑

## 形式逻辑

> formal logic

* 研究纯形式内容的推论的一门学科，这种内容是很明确的。若一个推论可以被表达成一个完全抽象的规则（即不只是和任一特定事物或性质有关的规则）的一个特定应用，则这个推论拥有**纯形式内容**。形式逻辑的规则由亚里斯多德最先写成。在许多逻辑的定义中，逻辑推论与带有纯形式内容的推论会是同一种概念。但这不表示非形式逻辑的概念是空洞的，因为没有任何一种形式语言可以捕捉到自然语言语义间所有的微细差别。

## 形式语言

> formal language

* 形式语言是用精确的数学或机器可处理的公式定义的语言。一般有两个方面：语法和语义。
* 专门研究语言的语法的数学和计算机科学分支叫做**形式语言理论**，它只研究语言的语法不致力于它的语义。在形式语言理论中，形式语言是一个字母表上的某些有限长字符串的集合。一个形式语言可以包含无限多个字符串。
* 某字符串**是否属于某一形式语言**，需要明确的**标准**。**表示此标准**的方法有：枚举法，形式文法，正则表达式，自动机，decision procedure。

## 自动机

> automata

* 自动机是形式语言的一个有限表示
* 与形式语言紧密相关：自动机消耗输入符号，并在自身的不同状态间转移，可以通过状态机消耗完整个字符串之后是否达到某些特定状态来定义一个字符串是否属于某一个语言。语言可以通过某种自动机来识别，比如**图灵机、有限状态自动机**。

## 图灵机

> turing machine

## 有限状态自动机

> finite state automata

# 解释

## 计算机科学和逻辑之间的关系

数理逻辑是计算机科学的基础。特别是其中的**可计算性理论**（递归论），**模态逻辑**和**范畴论**。另外，数理逻辑和计算机科学之间理论上的重合如下：
1. 程序语言学、语义学的研究和程序验证中的模型检测从模型论中衍生而来。
1. **哥德尔不完备性定理**证明了：任何有能力表达皮亚诺算术的逻辑系统中，都存在既无法证明、也无法证伪的语句。
2. 当使用一阶逻辑表示人工智能Agent中的目标和状态时，**frame problem**是必须解决的基础问题之一。
3. **Curry-Howard correspondence**是逻辑系统和计算机软件之间的关系（换言之，“证明”和“程序”的等价性）。此理论在证明和程序之间建立了精确的关联。尤其是，此理论指出了简单类型lambda演算和直觉命题逻辑的证明之间的关联对应。这一结果与证明论有关，直觉主义逻辑和线性逻辑在此起了很大作用。
3. λ演算和组合子逻辑这样的演算现在属于理想程序语言。
4. **范畴论**在数学角度强调了结构之间的关系。它与计算机科学中的许多部分紧密相连：编程语言中的**类型系统**，**transition system**，编程语言的**模型**和编程语言的**语义**。编程语言一般都与一个或多个形式系统相关联，比如：图灵机与命令式语言，lambda演算与函数式语言，一阶逻辑与逻辑式语言，pi演算与并发模型，范畴论与Haskell。
5. 计算机科学在自动验证和自动寻找证明等技巧方面的成果对逻辑研究做出了贡献，比如说**自动定理证明**和**逻辑编程**。
6. 时序逻辑（temporal logic）用于并发系统的论证推导。

数理逻辑极大地促进了**人工智能**的发展。一开始人们便认识到：自动逻辑推理技术在**解决问题**和**从事实中获得结论**方面有巨大潜力。Ron Brachman将一阶逻辑（FOL）描述为人工智能的基础——知识表示（knowledge representation）的标准。在通用化或表达能力方面，描述和分析信息的最佳方法就是一阶逻辑。一阶逻辑本身没有作为计算机语言使用，是因为它的表达能力太强了，以至于无论计算机如何强力，都很难执行它的语句。通常来说，语言的表达能力和可计算性此消彼长，是任何形式的知识表示中需要权衡的问题。[^1]

> 例如，专家系统中使用的IF-THEN规则是一阶逻辑中非常有限的子集，而并没有使用全部的逻辑符号组成任意形式的公式。此出发点很简单，就是逻辑学家说的模态推理。这样的直接结果就是基于结果的系统支持高性能计算，特别是使用了优化算法和编译之后。

另外，软件工程领域也对逻辑学有巨大依赖。基于知识的软件辅助和程序员的编程实验可以用逻辑学验证其正确性。逻辑学也可以用于在不同平台上进行高效的代码转换并证明实现和程序规格的相等性。

### 计算机逻辑年刊
IEEE Symposium on Logic in Computer Science（**LICS**）。

## Mathematical Logic - 数理逻辑

### 数理逻辑中的基本结果
* 一阶公式的普遍有效性的推定证明可用算法来检查有效性。用技术语言来说，证明集合是原始递归的。实质上，这就是哥德尔完全性定理，虽然那个定理的通常陈述使它与算法之间的关系不明显。
* 有效的一阶公式的集合是无限不可数（Uncountable Infinite）的。这一集合是“递归枚举的”，即不存在一图灵机（从而不存在任何现有计算机和算法）可以对某个非一阶公式的输入告诉你“这个输入一定不是一阶公式”——它可能一直运算下去。
* 普遍有效的二阶公式的集合甚至不是递归可枚举的。这是哥德尔不完全性定理的一个结果。
* 勒文海姆-斯科伦定理。

* 相继式演算中的切消定理。
* 保罗·约瑟夫·科恩（Paul Cohen）在1963年证明的连续统假设的独立性。

## Formal System - 形式系统

A formal system is used to infer theorems from axioms according to a set of rules. These rules used to carry out the inference of theorems from axioms are known as the logical calculus of the formal system. A formal system is essentially an "axiomatic system". In 1921, David Hilbert proposed to use such system as the foundation for the knowledge in mathematics. A formal system may represent a well-defined system of abstract thought. Spinoza's Ethics imitates the form of Euclid's Elements. Spinoza employed Euclidean elements such as "axioms" or "primitive truths", rules of inferences, etc., so that a calculus can be built using these.

> 在逻辑与数学中，一个形式系统（英语：Formal system）是由两个部分组成的，一个形式语言加上一个推理规则或转换规则的集合。大卫·希尔伯特 (David Hilbert)在1921年推动**以形式系统来描述数学知识** 。 一个形式系统也许是纯粹抽象地制定出来，只是为了研究其自身。另一方面，也可能是为了描述真实现象或客观现实的领域而设计的。命题逻辑是最简单的形式系统。


A formal system can be expressed as the following:
1. A finite set of *symbols*, that can be used for constructing formulas (i.e. finite strings of symbols).
2. A *grammar*, which tells how *well-formed formulas* (abbreviated wff) are constructed out of the symbols in the alphabet. It is usually required that there be a decision procedure for deciding whether a formula is well formed or not.
3. A set of *axioms* or axiom schemata: each axiom must be a wff.
4. A set of *inference rules*.

> 在数学中的形式系统由以下要素组成：<br>
好一群有限数量，且可用于建构公式的符号集合。<br>
一套文法，说明了如何以上述符号建构形式良好的公式（通称合式公式，或Well-formed formula，wff）。通常会要求有一个判定某公式是否为形式良好的算法。<br>
一群公设或公理模式的陈述，每个公理都必须是合式公式。
一群推理规则。

### 数学中的形式系统列表

* Domain relational calculus, a calculus for the relational data model
* Functional calculus, a way to apply various types of functions to operators
* Join calculus, a theoretical model for distributed programming
Lambda calculus, a formulation of the theory of reflexive functions that has deep connections to computational theory
* Matrix calculus, a specialized notation for multivariable calculus over spaces of matrices
* Modal μ-calculus, a common temporal logic used by formal verification methods such as model checking
* Pi-calculus, a formulation of the theory of concurrent, communicating processes that was invented by Robin Milner
* Predicate calculus, specifies the rules of inference governing the logic of predicates
* Propositional calculus, specifies the rules of inference governing the logic of propositions
* Refinement calculus, a way of refining models of programs into efficient programs
* Rho calculus, introduced as a general means to uniformly integrate rewriting and lambda calculus
* Tuple calculus, a calculus for the relational data model, inspired the SQL language
* Umbral calculus, the combinatorics of certain operations on polynomials
* Vector calculus (also called vector analysis), comprising specialized notations for multivariable analysis of vectors in an inner-product space



## First Order Logic - 一阶逻辑
As a Formal System:
1. Symbols:  

Quantifier symbols: ∀ and ∃. 
Logical connectives: ∧ for conjunction, ∨ for disjunction, → for implication, ↔ for biconditional, ¬ for negation.
Predicate symbols: n-ary, n >= 0.
Function symbols.

2. Formation rules:
Terms: variables, functions.<br>
Formulas: 
* The set of formulas (also called well-formed formulas[9] or WFFs) is inductively defined by the following rules:
* Predicate symbols. If P is an n-ary predicate symbol and t1, ..., tn are terms then P(t1,...,tn) is a formula.
* Equality. If the equality symbol is considered part of logic, and t1 and t2 are terms, then t1 = t2 is a formula.
* Negation. If φ is a formula, then {\displaystyle \lnot } \lnot φ is a formula.
* Binary connectives. If φ and ψ are formulas, then (φ {\displaystyle \rightarrow } \rightarrow  ψ) is a formula. Similar rules apply to other binary logical connectives.
* Quantifiers. If {\displaystyle \varphi } \varphi  is a formula and x is a variable, then {\displaystyle \forall x\varphi } \forall x\varphi  (for all x, {\displaystyle \varphi } \varphi  holds) and {\displaystyle \exists x\varphi } \exists x\varphi (there exists x such that {\displaystyle \varphi } \varphi ) are formulas.

3.  

4. 
简介
不像命题逻辑只处理简单的陈述命题，一阶逻辑还额外包含了断言和量化。

断言像是一个会传回真或伪的函数。考虑下列句子：“苏格拉底是哲学家”、“柏拉图是哲学家”。在命题逻辑里，上述两句被视为两个不相关的命题，简单标记为p及q。然而，在一阶逻辑里，上述两句可以使用断言以更相似的方法来表示。其断言为Phil(a)，表示a是哲学家。因此，若a代表苏格拉底，则Phil(a)为第一个命题－p；若a代表柏拉图，则Phil(a)为第二个命题－q。一阶逻辑的一个关键要点在此可见：字符串“Phil”为一个语法实体，以当a为哲学家时陈述Phil(a)为真来赋与其语义。一个语义的赋与称为解释。

一阶逻辑允许以使用变量的方法推论被许多组件共享的性质。例如，令Phil(a)表示a为哲学家，且令Schol(a)表示a为学者。则公式

## Second-order Logic - 二阶逻辑

## High-order Logic - 高阶逻辑

## 类型论

1.


# Appendix


# Content of Mathematical Logic in Wikipedia

**[Mathematical logic](https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic")**

* General:[Formal language](https://en.wikipedia.org/wiki/Formal_language "Formal language")
, [Formation rule](https://en.wikipedia.org/wiki/Formation_rule "Formation rule")
, [Formal proof](https://en.wikipedia.org/wiki/Formal_proof "Formal proof")
, [Formal semantics](https://en.wikipedia.org/wiki/Formal_semantics_(logic) "Formal semantics (logic)")
, [Well-formed formula](https://en.wikipedia.org/wiki/Well-formed_formula "Well-formed formula")
, [Set](https://en.wikipedia.org/wiki/Set_(mathematics) "Set (mathematics)")
, [Element](https://en.wikipedia.org/wiki/Element_(mathematics) "Element (mathematics)")
, [Class](https://en.wikipedia.org/wiki/Class_(set_theory) "Class (set theory)")
, [Classical logic](https://en.wikipedia.org/wiki/Classical_logic "Classical logic")
, [Axiom](https://en.wikipedia.org/wiki/Axiom "Axiom")
, [Rule of inference](https://en.wikipedia.org/wiki/Rule_of_inference "Rule of inference")
, [Relation](https://en.wikipedia.org/wiki/Finitary_relation "Finitary relation")
, [Theorem](https://en.wikipedia.org/wiki/Theorem "Theorem")
, [Logical consequence](https://en.wikipedia.org/wiki/Logical_consequence "Logical consequence")
, [Type theory](https://en.wikipedia.org/wiki/Type_theory "Type theory")
, [Symbol](https://en.wikipedia.org/wiki/Symbol_(formal) "Symbol (formal)")
, [Syntax](https://en.wikipedia.org/wiki/Syntax_(logic) "Syntax (logic)")
, [Theory](https://en.wikipedia.org/wiki/Theory_(mathematical_logic) "Theory (mathematical logic)")
* Systems: [Formal system](https://en.wikipedia.org/wiki/Formal_system "Formal system")
, [Deductive system](https://en.wikipedia.org/wiki/Deductive_system "Deductive system")
, [Axiomatic system](https://en.wikipedia.org/wiki/Axiomatic_system "Axiomatic system")
, [Hilbert style systems](https://en.wikipedia.org/wiki/Hilbert_system "Hilbert system")
, [Natural deduction](https://en.wikipedia.org/wiki/Natural_deduction "Natural deduction")
, [Sequent calculus](https://en.wikipedia.org/wiki/Sequent_calculus "Sequent calculus")
* [Traditional logic](https://en.wikipedia.org/wiki/Term_logic "Term logic"):
, [Proposition](https://en.wikipedia.org/wiki/Proposition "Proposition")
, [Inference](https://en.wikipedia.org/wiki/Inference "Inference")
, [Argument](https://en.wikipedia.org/wiki/Argument "Argument")
, [Validity](https://en.wikipedia.org/wiki/Validity_(logic) "Validity (logic)")
, [Cogency](/w/index.php?title=Cogency&action=edit&redlink=1 "Cogency (page does not exist)")
, [Syllogism](https://en.wikipedia.org/wiki/Syllogism "Syllogism")
, [Square of opposition](https://en.wikipedia.org/wiki/Square_of_opposition "Square of opposition")
, [Venn diagram](https://en.wikipedia.org/wiki/Venn_diagram "Venn diagram")
* [Propositional calculus](https://en.wikipedia.org/wiki/Propositional_calculus "Propositional calculus") and [Boolean logic](https://en.wikipedia.org/wiki/Boolean_algebra "Boolean algebra"):
 [Boolean functions](https://en.wikipedia.org/wiki/Boolean_function "Boolean function")
, [Propositional calculus](https://en.wikipedia.org/wiki/Propositional_calculus "Propositional calculus")
, [Propositional formula](https://en.wikipedia.org/wiki/Propositional_formula "Propositional formula")
, [Logical connectives](https://en.wikipedia.org/wiki/Logical_connective "Logical connective")
, [Truth tables](https://en.wikipedia.org/wiki/Truth_table "Truth table")
, [Many-valued logic](https://en.wikipedia.org/wiki/Many-valued_logic "Many-valued logic")
* [Predicate logic](https://en.wikipedia.org/wiki/Predicate_logic "Predicate logic"):
, [First-order](https://en.wikipedia.org/wiki/First-order_logic "First-order logic")
, [Quantifiers](https://en.wikipedia.org/wiki/Quantifier_(logic) "Quantifier (logic)")
, [Predicate](https://en.wikipedia.org/wiki/Predicate_(mathematical_logic) "Predicate (mathematical logic)")
, [Second-order](https://en.wikipedia.org/wiki/Second-order_logic "Second-order logic")
, [Monadic predicate calculus](https://en.wikipedia.org/wiki/Monadic_predicate_calculus "Monadic predicate calculus")
* [Naive set theory](https://en.wikipedia.org/wiki/Naive_set_theory "Naive set theory"): [Set](https://en.wikipedia.org/wiki/Set_(mathematics) "Set (mathematics)")
, [Empty set](https://en.wikipedia.org/wiki/Empty_set "Empty set")
, [Element](https://en.wikipedia.org/wiki/Element_(mathematics) "Element (mathematics)")
, [Enumeration](https://en.wikipedia.org/wiki/Enumeration "Enumeration")
, [Extensionality](https://en.wikipedia.org/wiki/Extensionality "Extensionality")
, [Finite set](https://en.wikipedia.org/wiki/Finite_set "Finite set")
, [Infinite set](https://en.wikipedia.org/wiki/Infinite_set "Infinite set")
, [Subset](https://en.wikipedia.org/wiki/Subset "Subset")
, [Power set](https://en.wikipedia.org/wiki/Power_set "Power set")
, [Countable set](https://en.wikipedia.org/wiki/Countable_set "Countable set")
, [Uncountable set](https://en.wikipedia.org/wiki/Uncountable_set "Uncountable set")
, [Recursive set](https://en.wikipedia.org/wiki/Recursive_set "Recursive set")
, [Domain](https://en.wikipedia.org/wiki/Domain_of_a_function "Domain of a function")
, [Codomain](https://en.wikipedia.org/wiki/Codomain "Codomain")
, [Image](https://en.wikipedia.org/wiki/Image_(mathematics) "Image (mathematics)")
, [Map](https://en.wikipedia.org/wiki/Map_(mathematics) "Map (mathematics)")
, [Function](https://en.wikipedia.org/wiki/Function_(mathematics) "Function (mathematics)")
, [Relation](https://en.wikipedia.org/wiki/Binary_operation "Binary operation")
, [Ordered pair](https://en.wikipedia.org/wiki/Ordered_pair "Ordered pair")
* [Set theory](https://en.wikipedia.org/wiki/Set_theory "Set theory"):, [Foundations of mathematics](https://en.wikipedia.org/wiki/Foundations_of_mathematics "Foundations of mathematics") [Zermelo–Fraenkel set theory](https://en.wikipedia.org/wiki/Zermelo%E2%80%93Fraenkel_set_theory "Zermelo–Fraenkel set theory")
, [Axiom of choice](https://en.wikipedia.org/wiki/Axiom_of_choice "Axiom of choice")
, [General set theory](https://en.wikipedia.org/wiki/General_set_theory "General set theory")
, [Kripke–Platek set theory](https://en.wikipedia.org/wiki/Kripke%E2%80%93Platek_set_theory "Kripke–Platek set theory")
, [Von Neumann–Bernays–Gödel set theory](https://en.wikipedia.org/wiki/Von_Neumann%E2%80%93Bernays%E2%80%93G%C3%B6del_set_theory "Von Neumann–Bernays–Gödel set theory")
, [Morse–Kelley set theory](https://en.wikipedia.org/wiki/Morse%E2%80%93Kelley_set_theory "Morse–Kelley set theory")
, [Tarski–Grothendieck set theory](https://en.wikipedia.org/wiki/Tarski%E2%80%93Grothendieck_set_theory "Tarski–Grothendieck set theory")
* [Model theory](https://en.wikipedia.org/wiki/Model_theory "Model theory"): [Model](https://en.wikipedia.org/wiki/Structure_(mathematical_logic) "Structure (mathematical logic)")
, [Interpretation](https://en.wikipedia.org/wiki/Interpretation_(logic) "Interpretation (logic)")
, [Non-standard model](https://en.wikipedia.org/wiki/Non-standard_model "Non-standard model")
, [Finite model theory](https://en.wikipedia.org/wiki/Finite_model_theory "Finite model theory")
, [Truth value](https://en.wikipedia.org/wiki/Truth_value "Truth value")
, [Validity](https://en.wikipedia.org/wiki/Validity_(logic) "Validity (logic)")
* [Proof theory](https://en.wikipedia.org/wiki/Proof_theory "Proof theory"):
, [Formal proof](https://en.wikipedia.org/wiki/Formal_proof "Formal proof")
, [Deductive system](https://en.wikipedia.org/wiki/Deductive_system "Deductive system"),
 Formal system
, [Theorem](https://en.wikipedia.org/wiki/Theorem "Theorem")
, [Logical consequence](https://en.wikipedia.org/wiki/Logical_consequence "Logical consequence")
, [Rule of inference](https://en.wikipedia.org/wiki/Rule_of_inference "Rule of inference")
, [Syntax](https://en.wikipedia.org/wiki/Syntax_(logic) "Syntax (logic)")
* [Computability theory](https://en.wikipedia.org/wiki/Computability_theory "Computability theory"):
, [Recursion](https://en.wikipedia.org/wiki/Recursion "Recursion")
, [Recursive set](https://en.wikipedia.org/wiki/Recursive_set "Recursive set")
, [Recursively enumerable set](https://en.wikipedia.org/wiki/Recursively_enumerable_set "Recursively enumerable set")
, [Decision problem](https://en.wikipedia.org/wiki/Decision_problem "Decision problem")
, [Church–Turing thesis](https://en.wikipedia.org/wiki/Church%E2%80%93Turing_thesis "Church–Turing thesis")
, [Computable function](https://en.wikipedia.org/wiki/Computable_function "Computable function")
, [Primitive recursive function](https://en.wikipedia.org/wiki/Primitive_recursive_function "Primitive recursive function")

# Relationships - 关系

```lisp
(logic 
  (mathematical-logic
    (model-theory
      (programming-language-theory)
      (semantics)
      (model-theory))
    (proof-theory
      (formal-system))
    (recursive-theory)
    (axiomatic-set-theory)
  (formal-logic)))

(formal-verification
  ())

(formal-systems
  (propositional-logic)
  (first-order-logic)
  (second-order-logic)
  (higher-order-logic)
  (type-theory)

```

# Content of Formal Logic in Wikipedia

# References

[^1]: Levesque, Hector; Ronald Brachman (1985). "A Fundamental Tradeoff in Knowledge Representation and Reasoning". In Ronald Brachman and Hector J. Levesque. Reading in Knowledge Representation. Morgan Kaufmann. p. 49. ISBN 0-934613-01-X.


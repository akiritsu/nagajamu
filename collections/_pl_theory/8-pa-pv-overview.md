---

title: "An Overview of Program Analysis and Verification"
---


## Progress

TODO: planned

## Topics

* Data Flow Analysis
* Contraint Based Analysis
* Abstract Interpretation
* Type and Effect Systems
* Model Checking

## Resources

[**Principles of Program Analysis**](https://www.amazon.com/Principles-Program-Analysis-Flemming-Nielson/dp/3540654100/ref=sr_1_1?keywords=principles+of+program+analysis&qid=1555162621&s=books&sr=1-1), 2004, Flemming Nielson, Hanne R. Nielson, Chris Hankin

- Program analysis utilizes static techniques for computing reliable information about the dynamic behavior of programs. Applications include **compilers** (for code improvement), **software validation** (for detecting errors) and **transformations between data representation** (for solving problems such as Y2K). This book is unique in providing an overview of the four major approaches to program analysis: **data flow analysis, constraint-based analysis, abstract interpretation, and type and effect systems**. The presentation illustrates the extensive similarities between the approaches, helping readers to choose the best one to utilize.

[**Data Flow Analysis: Theory and Practice**](https://www.amazon.com/Data-Flow-Analysis-Theory-Practice/dp/0849328802/ref=sr_1_1?keywords=Data+Flow+Analysis&qid=1555162779&s=books&sr=1-1), 1st Edition, 2009, Uday Khedker, Amitabha Sanyal, Bageshri Sathe

- This book offers comprehensive coverage of **both classical and contemporary data flow analysis**. It prepares foundations useful for both researchers and students in the field by standardizing and unifying various existing research, concepts, and notations. It also presents mathematical foundations of data flow analysis and includes study of data flow analysis implantation through use of the GNU Compiler Collection (GCC). Divided into three parts, this unique text combines discussions of inter- and intraprocedural analysis and then describes implementation of a generic data flow analyzer (gdfa) for bit vector frameworks in GCC.

[**Principle of Model Checking**](https://www.amazon.com/Principles-Model-Checking-MIT-Press/dp/026202649X/ref=sr_1_1?keywords=Principle+of+Model+Checking&qid=1555162555&s=books&sr=1-1), 2008,Christel Baier, Joost-Pieter Katoen

- This book is a comprehensive introduction to the **foundations of model checking**, a fully automated technique for finding flaws in hardware and software with extensive examples and both practical and theoretical exercises. The book begins with the basic principles for **modeling concurrent** and **communicating systems**, introduces different classes of properties (including safety and liveness), presents the notion of fairness, and provides **automata-based algorithms** for these properties. It introduces the **temporal logics LTL and CTL**, compares them, and covers algorithms for verifying these logics, discussing real-time systems as well as systems subject to random phenomena. Separate chapters treat such efficiency-improving techniques as abstraction and symbolic manipulation. The book includes an extensive set of examples (most of which run through several chapters) and a complete set of basic results accompanied by detailed proofs.

**Lecture Notes:**
* LectureNotes 15 819 O: Program Analysis
* LectureNotes Aarhus University: Static Program Analysis
* LectureNotes CS243: Program Analysis and Optimization
* LectureNotes EECS-219C: Computer Aided Verification
* LectureNotes MIT-6.041 Probabilistic Systems Analysis and Applied Probability
* LectureNotes MIT-6.820: Fundamentals of Program Analysis 2015
* LectureNotes PKU: Software Analysis

### Principles of Program Analysis

[E-book from ShanghaiTech SIST](sist.shanghaitech.edu.cn/faculty/songfu/cav/PPA.pdf)

## Ulitiies

### Spoon 
A library to analyze, transform, rewrite, and transpile Java source code. It parses source files to build a well-designed AST with powerful analysis and transformation API.

[Link](https://github.com/INRIA/spoon)

### bddbddb

We use bddbddb primarily as a tool for easily and efficiently specifying program analyses. We represent the entire program as database relations. Developing a program analysis becomes as simple as writing the specification for the analysis in a declarative style and then feeding that specification to bddbddb, which automatically transforms your specification into efficient BDD operations.

[Link](http://bddbddb.sourceforge.net/)


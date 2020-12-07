---

title: "An Overview of Compiler Design and Optimization"
---



## Progress
TODO: planned
ONGOING: COPL

## Mathematcial Foundation
1. Type Theory
2. Automata Theory

[**Concepts of Programming Languages (COPL)**](https://www.amazon.com/Concepts-Programming-Languages-Robert-Sebesta/dp/013394302X/ref=sr_1_1?keywords=Concepts+of+Programming+Languages&qid=1555157213&s=books&sr=1-1), 11th Edition, 2015, Robert W. Sebesta

- **Readership:** _undergraduates_
- Concepts of Computer Programming Languages introduces students to the **fundamental concepts of computer programming languages** and provides them with the tools necessary to **evaluate contemporary and future languages**. An in-depth discussion of programming language structures, such as syntax and lexical and syntactic analysis, also prepares readers to study compiler design.

## Design


LectureNotes-15-411: Compiler Design

[**Language Implementation Patterns: Create Your Own Domain-Specific and General Programming Languages (LIP)**](https://www.amazon.com/Language-Implementation-Patterns-Domain-Specific-Programming/dp/193435645X/ref=sr_1_1?keywords=Language+Implementation+Patterns&qid=1555156808&s=books&sr=1-1), 1st Edition, 2010, Terence Parr

- Learn to build configuration file readers, data readers, model-driven code generators, source-to-source translators, source analyzers, and interpreters. You don't need a background in computer science--ANTLR creator Terence Parr demystifies language implementation by breaking it down into the most common design patterns. Pattern by pattern, you'll learn the key skills you need to implement your own computer languages. Language Design Patterns identifies and condenses the most common design patterns, providing sample implementations of each.The pattern implementations use Java, but the patterns themselves are completely general. Some of the implementations use the well-known ANTLR parser generator, so readers will find this book an excellent source of ANTLR examples as well. But this book will benefit anyone interested in implementing languages, regardless of their tool of choice. Other language implementation books focus on compilers, which you rarely need in your daily life. Instead, Language Design Patterns shows you patterns you can use for all kinds of language applications.

[**Modern Compiler Implementation in Java (Tiger Book)**](https://www.amazon.com/Modern-Compiler-Implementation-Andrew-Appel/dp/052182060X/ref=sr_1_2?keywords=Modern+Compiler+Implementation&qid=1555156941&s=books&sr=1-2), 2nd Edition, 2002, Andrew W. Appel, Jens Palsberg

- This textbook describes **all phases of a compiler**: lexical analysis, parsing, abstract syntax, semantic actions, intermediate representations, instruction selection via tree matching, dataflow analysis, graph-coloring register allocation, and runtime systems. It includes thorough coverage of current techniques in code generation and register allocation, and the compilation of functional and object-oriented languages. The most accepted and successful techniques are described and illustrated with actual Java^TM® classes. This new edition includes more discussion of Java and object-oriented programming concepts such as visitor patterns plus a new Mini-Java programming project. A unique feature is the newly redesigned compiler project in Java for a subset of Java itself. The project includes both front-end and back-end phases.
- **Structrue:**
  - Part I is suitable for a one-semester first course in compiler design.
  - Part II which includes the compilation of object-oriented and functional languages, garbage collection, loop optimization, SSA form, instruction scheduling, and optimization for cache-memory hierarchies, can be used for a second-semester or graduate course.

[**Compilers, Principles, Techniques, and Tools (Dragon Book)**](https://www.amazon.com/Compilers-Principles-Techniques-Tools-2nd/dp/0321486811/ref=sr_1_1?keywords=Compilers%2C+Principles%2C+Techniques%2C+and+Tools&qid=1555156667&s=books&sr=1-1), 2nd Edition, 2006, Alfred V. Aho, Monica S. Lam, Ravi Sethi, Jeffrey D. Ullman

- Compilers: Principles, Techniques and Tools, known to professors, students, and developers worldwide as the "Dragon Book," is available in a new edition. Every chapter has been completely revised to reflect developments in software engineering, programming languages, and computer architecture that have occurred since 1986, when the last edition published. The authors, recognizing that few readers will ever go on to construct a compiler, retain their focus on the broader set of problems faced in software design and software development.

[**Advanced Compiler Design and Implementation (Whale Book)**](https://www.amazon.com/Advanced-Compiler-Design-Implementation-Muchnick/dp/1558603204/ref=sr_1_1?keywords=Advanced+Compiler+Design+and+Implementation&qid=1555156596&s=books&sr=1-1), 1st Edition, 1997， Steven Muchnick

- This comprehensive, up-to-date work examines **advanced issues in the design and implementation of compilers for modern processors**. Written for professionals and graduate students, the book guides readers in designing and implementing efficient structures for highly optimizing compilers for real-world languages. Covering advanced issues in fundamental areas of compiler design, this book discusses a wide array of possible code optimizations, determining the relative importance of optimizations, and selecting the most effective methods of 

[**Compiling With Continuations**](https://www.amazon.com/Compiling-Continuations-Andrew-W-Appel/dp/052103311X/ref=sr_1_fkmrnull_1?keywords=Compiling+With+Continuations&qid=1555156742&s=books&sr=1-1-fkmrnull), 2007, Andrew W. Appel

- This book shows how **continuation-passing style** is used as an intermediate representation to **perform optimizations and program transformations**. Continuations can be used to compile most programming languages. The method is illustrated in a compiler for the programming language Standard ML. Prior knowledge of ML, however, is not necessary, as the author carefully explains each concept as it arises. This is the first book to show how concepts from the theory of programming languages can be applied to the production of practical optimizing compilers for modern languages like ML. All the details of compiling are covered, including the interface to a runtime system and garbage collector.

**Program Logics for Certified Compilers**

## Optimization

1. Program Analysis: POPA
2. Decision Procedures

## Highlighted Topics and Papers

TODO: 

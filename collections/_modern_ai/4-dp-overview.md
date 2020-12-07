---
title: "An Overview of Decision Procedures"
---




## Progress
TODO: planned

## Resources

Official Site: [Decision Procedures](http://www.decision-procedures.org/)

[**Decision Procedures: an Algorithmic Point of View (DPAPV)**](https://www.amazon.com/Decision-Procedures-Algorithmic-Theoretical-Computer/dp/3662504960/ref=sr_1_fkmrnull_1?keywords=Decision+Procedures%3A+an+Algorithmic+Point+of+View&qid=1555168280&s=books&sr=1-1-fkmrnull), 2nd Edition, Daniel Kroening, Ofer Strichman

- **Prerequisites:**: _theoretical computer science foundations including formal proofs, the satisfiability problem, soundness and completeness_
- Here, the authors focus on theories that are expressive enough to model real problems, but are still decidable. Specifically, the book concentrates on **decision procedures for first-order theories** that are commonly used in automated verification and reasoning, theorem-proving, compiler optimization and operations research. The techniques described in the book draw from fields such as graph theory and logic, and are routinely used in industry. The authors introduce the basic terminology of **satisfiability modulo theories** and then, in separate chapters, study decision procedures for each of the following theories: propositional logic; equalities and uninterpreted functions; linear arithmetic; bit vectors; arrays; pointer logic; and quantified formulas.
- Lecture slides: http://www.decision-procedures.org/

## Introduction

A decision procedure is an algorithm that, given a decision problem, terminates with a correct yes/no answer. Here, the authors focus on theories that are expressive enough to model real problems, but are still decidable. Specifically, the book concentrates on decision procedures for first-order theories that are commonly used in automated verification and reasoning, theorem-proving, compiler optimization and operations research. The techniques described in the book draw from fields such as graph theory and logic, and are routinely used in industry.

The authors introduce the basic terminology of SAT, Satisfiability Modulo Theories (SMT) and the DPLL(T) framework. Then, in separate chapters, they study decision procedures for the following theories:

- equalities and uninterpreted functions
- linear arithmetic
- bit vectors
- arrays
- pointer logic
- quantified formulas.

## Introduction

A decision procedure is an algorithm that, given a decision problem, terminates
with a correct yes/no answer. In this book, we focus on decision procedures
for decidable first-order theories that are useful in the context of automated
software and hardware verification, theorem proving, compiler optimization,
and, since we are covering propositional logic, any problem that is in the
complexity class NP and is not polynomial. The range of modeling languages
that we cover in this book—propositional logic, linear arithmetic, bitvectors,
quantified formulas etc.—and the modeling examples that we include for each
of those, will assist the reader to translate their particular problem and solve
it with one of the publically available tools. The common term for describing
this field is Satisfiability Modulo Theories, or SMT for short, and software
that solves SMT formulas is called an SMT solver.

Since coping with the above-mentioned tasks on an industrial scale de-
pends critically on effective decision procedures, SMT is a vibrant and prosper-
ing research subject for many researchers around the world, both in academia
and in industry. Intel, AMD, ARM and IBM are some of the companies that
routinely apply decision procedures in circuit verification with ever-growing
capacity requirements. Microsoft is developing an SMT solver and applies it
routinely in over a dozen code analysis tools. Every user of Microsoft Windows
and Microsoft Office therefore indirectly enjoys the benefits of this technol-
ogy owing to the increased reliability and resilience to hacker attacks of these
software packages. There are hundreds of smaller, less famous companies that
use SMT solvers for various software engineering tasks, and for solving various
planning and optimization problems.

There are now numerous universities that teach courses dedicated to de-
cision procedures; occasionally, the topic is also addressed in courses on algo-
rithms or on logic for computer science. The primary goal of this book is to
serve as a textbook for an advanced undergraduate- or graduate-level com-
puter science course. It does not assume specific prior knowledge beyond what
is expected from a third-year undergraduate computer science student. The

## Highlighted Topics and Papers

TODO: 
---
layout: post
title: "Learning Notes on Optimal Learning"
---

<script type="text/javascript" src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML"></script>



# Overview

> This overview is based on:

- Powell, W. B., & Frazier, P. (2008). Optimal learning. In State-of-the-Art Decision-Making Tools in the Information-Intensive Age (pp. 213-246). Informs.

#

# Part I: Fundamentals

## Chapter 1 - The Challenges of Learning

In this book, _we introduce problems where the **probability distributions** themselves are **unknown**, but where we have the opportunity to **collect new information** to improve our **understanding** of what they are_. We are primarily interested in problems where the
cost of the information is considered "significant," which is to say that we are willing
to spend some time thinking about _how to collect the information in an effective way_.
What this means, however, is highly problem-dependent. We are willing to spend
quite a bit before we drill a \$10 million hole hoping to find oil, but we may be willing
to invest only a small effort before determining the next measurement inside a search
algorithm running on a computer.
The **modeling of learning problems**, which might be described as "learning how
to learn," can be fairly difficult. While expectations are at least well-defined for
stochastic optimization problems, they take on subtle interpretations when we are
actively changing the underlying probability distributions. For this reason, we tend
to work on what might otherwise look like very simple problems. Fortunately, there
are very many "simple problems" which would be trivial if we only knew the values of
all the parameters, but which pose unexpected challenges when we lack information.

> **Deterministic optimization**: being able to access perfectly accurate infromation
> **Stochastic optimization**: knowing the probability distributions of the uncertain quantities

### 1.1 Learning The Best Path

Balancing the desire to explore versus exploit is referred to in some communities as the **exploration versus exploitation problem**. Another name is the **learn versus earn problem**. Regardless of the name, the point is the lack of information when we make a decision, along with
the value of new information in improving future decisions.

### 1.2 Areas of Application

Drug discovery - Curing a disease often involves first finding a small family of base molecules, and then testing a large number of variations of a base
molecule. Each test of a molecular variation can take a day and consumes costly materials, and the performance can be uncertain.

### 1.3 Major Problem Classes

- Online versus offline - Online problems involve **learning from experiences as they occur**. For example, we might observe the time on a path through a
  network by traveling the path, or adjust the price of a product on the Internet
  and observe the revenue. We can try a decision that looks bad in the hopes of
  learning something, but we have to incur the cost of the decision, and balance
  this cost against future benefits. In offline problems, we might be working in a
  lab with a budget for making measurements, or we might set aside several weeks
  to run computer simulations. If we experiment with a chemical or process that
  does not appear promising, all we care about is the information learned from the
  experiment; we do not incur any cost from running an unsuccessful experiment.
  _When our budget has been exhausted, we have to use our observations to choose a design or a process that will then be put into production_.
- Objectives - Problems differ in terms of what we are trying to achieve. Most
  of the time we will focus on **minimizing the expected cost** or **maximizing the expected reward** from some system. However, we may be simply interested
  in finding the best design, or ensuring that we find a design that is within five
  percent of the best.
- The measurement decision - In some settings, we have **a small number of choices** such as drilling test wells to learn about the potential for oil or natural
  gas. The number of choices may be small, but each test can cost millions of
  dollars. Alternatively, we might have to find the best set of 30 proposals out of
  100 that have been submitted, which means that we have to choose from 3 x $10^25$
  possible portfolios. Or we may have to choose the best price, temperature, or
  pressure (a scalar, continuous parameter). We might have to set a combination
  of 16 parameters to produce the best results for a business simulator. Each
  of these problems introduce different computational challenges because of the
  size of the search space.
- **The implementation decision** - Collecting the best information depends on what
  you are going to do with the information once you have it. Often, the choices
  of what to observe (the measurement decision) are the same as what you are
  going to implement (finding the choice with the best value). But you might
  measure a link in a graph in order to choose the best path. Or we might want
  to learn something about a new material to make a decision about new solar
  panels or batteries. In these problems, the implementation decision (the choice
  of path or technology) is different from the choice of what to measure.
- What we believe - We may start by knowing nothing about the best system.
  Typically, we know something (or at least we will know something after we
  make our first measurement). **What assumptions can we reasonably make** about
  different choices? Can we put a normal distribution of belief on an unknown
  quantity? Are the beliefs correlated (if a laptop with one set of features has
  higher sales than we expected, does this change our belief about other sets of
  features)? Are the beliefs stored as a lookup table (that is, a belief for each
  design), or are the beliefs expressed as some sort of statistical model?
- **The nature of a measurement** - Closely related to what we believe is what we
  learn when we make a measurement. Is the observation normally distributed?
  Is it a binary random variable (success/failure)? Are measurements made with
  perfect accuracy? If not, do we know the distribution of the error in a measurement?
- Belief states and physical states - All learning problems include a "belief state"
  (or knowledge state) which captures what we believe about the system. Some
  problems also include a physical state. For example, to measure the presence
  of disease at city _i_, we have to visit city _i_. After making this measurement, the
  cost of visiting city _j_ now depends on city _i_. Our physical location is a physical
  state.

### 1.4 The Different Types of Learning

TODO: stochastic gradient algorithm?

By ignoring our ability to learn, the algorithm may not converge
to the right solution, or it may eventually find the right solution, but very slowly. The central idea of optimal learning is to **incorporate the value of information in the future to make better decisions now**.

> **converge**: (of lines) tend to meet at a point.
> **incorporate**: take in or contain (something) as part of a whole; include.

### 1.5 Learning From Different Communities

TODO: Monte Carlo simulation
TODO: frequentist statistics(mlapp)

- Simulation optimization - The simulation community often faces the problem
  of **tuning parameters** that influence the performance of a system that we are
  analyzing using Monte Carlo simulation. Simulations can be **time-consuming**, so the challenge is deciding how long to analyze a particular configuration or policy before switching to another one.
- The ranking and selection problem - It is most
  often approached using the language of _classical frequentist statistics_ (but not
  always) and tends to be very practical in its orientation. In ranking and selec-
  tion, we assume that for **each measurement can be chosen equally from a set of alternatives** (no cost for switching).
- The bandit community - The online (pay as you go) version of ranking
  and selection. A major breakthrough for this problem class was the discovery
  that a **simple index policy** (a quantity computed for each alternative that guides
  which alternative should be tested next) is optimal, producing a line of research
  (primarily in applied probability) aimed at discovering optimal index policies
  for more general problems. A separate subcommunity (primarily in computer
  science) has focused on a simple heuristic known as **upper confidence bounding**
  which has the property that the number of times we test the wrong alternative
  is bounded by a logarithmic function, which has then been shown to be the
  best possible bound.
- Global optimization of expensive functions - The engineering community often finds a need to optimize complex functions of continuous variables. The
  function might be deterministic (but not always), and a single evaluation can
  take an hour to a week or more.
- Learning in economics - Economists have long studied the value of information
  in a variety of idealized settings. This community tends to focus on insights
  into the economic value of information, rather than the derivation of specific
  procedures for solving information collection problems.
- Active learning in computer science - The machine learning community typically assumes that a dataset is given. When there is an opportunity to choose
  what to measure, this is known as **active learning.** This community tends to
  focus on statistical measures of fit rather than economic measures of performance.
- Statistical design of experiments - A classical problem in statistics is deciding
  what experiments to run. For certain objective functions, it has long been
  known that experiments can be designed deterministically, in advance, rather
  than sequentially. Our focus is primarily on sequential information collection,
  but there are important problem classes where this is not necessary.
- Frequentist versus Bayesian communities - It is difficult to discuss research in
  optimal learning without addressing the sometimes contentious differences in
  styles and attitudes between frequentist and Bayesian statisticians. Frequentists
  look for the truth using nothing more than the data that we collect, while
  Bayesians would like to allow us to integrate expert judgment.
- Optimal stopping - There is a special problem class where we have the ability to
  observe a single stream of information such as the price of an asset. As long as
  we hold the asset, we get to observe the price. At some point, we have to make a18
  THE CHALLENGES OF LEARNING
  decision whether we should sell the asset or continue to observe prices (a form
  of learning). Another variant is famously known as the "secretary problem"
  where we interview candidates for a position (or offers for an asset); after each
  candidate (or offer) we have to decide if we should accept and stop or reject
  and continue observing.
- Approximate dynamic programming/reinforcement learning - **Approximate dynamic programming**, widely known as **reinforcement learning** in the computer
  science community, addresses the problem of choosing an action given a state
  which generates a reward and takes us to a new state. We do not know the exact
  value of the downstream state, but we might decide to visit a state just to learn
  more about it. This is generally known as the "exploration versus exploitation"
  problem, and this setting has motivated a considerable amount of research in
  optimal learning.
- Psychology - Not surprisingly, the tradeoff between exploration and exploitation is a problem that has to be solved by people (as well as other animals
  ranging from chimpanzees to ants) for problems ranging from finding foot to
  finding mates. This has recently attracted attention in the psychology community (Cohen et al. 2007).

### 1.6 Information Collection Using Decision Trees

1. Basic Decision Tree:<br>
   Decision Node -> {Outcome Node : event(s) and its probility}
   <br>Grows dramatically quickly: impractical as a computational device
2. Information collection：

- collecting information changes beliefs about uncertain quantities
- when we change our beliefs, we change our decisions
  which produces an economic impact

## Chapter 2 - Adaptive Learning

## Chapter 3 - The Economics of Information

## Chapter 4 - Ranking and Selection

## Chapter 5 - The Knowledge Gradient

## Chapter 6 - Bandit Problems

## Chapter 7 - Elements of a Learning Problem

# Part II: Extensions and Applications

## Chapter 8 - Linear Belief Models

## Chapter 9 - Subset Selection Problems

## Chapter 10 - Optimizing a Scalar Function

## Chapter 11 - Optimal Bidding

## Chapter 12 - Stopping ProblemsXViH

# Part III: Advanced Topics

## Chapter 13 - Active Learning in Statistics

## Chapter 14 - Simulation Optimization

## Chapter 15 - Learning in Mathematical Programming

## Chapter 16 - Optimizing over Continuous Measurements

## Chapter 17 - Learning with a Physical State

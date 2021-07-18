---
title: Personal Answers to EOPL
---

## Chapter 1

```scheme
#lang scheme

;; Exercise 1.9 Define remove, which is like remove-first, except that it
;; removes all occurrences of a given symbol from a list of symbols, not just the first.
(define remove
  (lambda (s los)
    (if (null? los)
        '()
        (if (eqv? (car los) s)
            (remove s (cdr los))
            (cons (car los) (remove s (cdr los)))))))

;; Exercise 1.12 Eliminate the one call to subst-in-s-exp in subst by replacing it
;; by its definition and simplifying the resulting procedure. The result will be a version
;; of subst that does not need subst-in-s-exp. This technique is called inlining, and
;; is used by optimizing compilers.
;; You can't use this function like: (subst 1 3 (1 2 3)) or (subst '1 '3 (1 2 3))
(define subst
  (lambda (new old slist)
    (if (null? slist)
        '()
        (cons
          (let ((sexp (car slist)))
;             (print sexp)
             (if (symbol? sexp)
                 (if (eqv? sexp old) new sexp)
                 (subst new old sexp)))
          (subst new old (cdr slist))))))
(define subst2
  (lambda (new old slist)
    (if (null? slist)
        '()
        (cons
         (if (symbol? (car slist))
               (if (eqv? (car slist) old) new (car slist))
               (subst2 new old (car slist)))
         (subst2 new old (cdr slist))))))
(define subst-decomp
  (lambda (new old slist)
    (if (null? slist)
        '()
        (cons (subst-in-s-exp new old (car slist))
              (subst-decomp new old (cdr slist))))))
(define subst-in-s-exp
  (lambda (new old sexp)
    (if (symbol? sexp)
        (if (eqv? sexp old) new sexp)
        (subst-decomp new old sexp)))) 
;; Exercise 1.15 (duple n x) returns a list containing n copies of x.
;; > (duple 2 3)
;; (3 3)
;; > (duple 4 '(ha ha))
;; ((ha ha) (ha ha) (ha ha) (ha ha))
;; > (duple 0 ’(blah))
;; ()
;;
(define duple
  (lambda (times object)
    (if (> times 0)
        '()
        (cons object
              (duple (- times 1) object)))))

;; Exercise 1.16 (invert lst), where lst is a list of 2-lists (lists of length two),
;; returns a list with each 2-list reversed.
;; > (invert ’((a 1) (a 2) (1 b) (2 b)))
;; ((1 a) (2 a) (b 1) (b 2))
;;
(define invert
  (lambda (lst)
    (if (list? lst)
        (if (list? (car lst))
            (cons (cons (cdar lst)
                        (car lst))
                  (invert (cdr lst)))
            '())
        '())))

;; Exercise 1.17 (down lst) wraps parentheses around each top-level element of
;; lst.
;; > (down ’(1 2 3))
;; ((1) (2) (3))
;; > (down ’((a) (fine) (idea)))
;; (((a)) ((fine)) ((idea)))
;; > (down ’(a (more (complicated)) object))
;; ((a) ((more (complicated))) (object))
;;
(define down
  (lambda (lst)
    (if (list? list)
        (cons (list (car lst))
              (down (cdr lst)))
        '())))

;; Exercise 1.18 (swapper s1 s2 slist) returns a list the same as slist, but
;; with all occurrences of s1 replaced by s2 and all occurrences of s2 replaced by s1.
;; > (swapper ’a ’d ’(a b c d))
;; (d b c a)
;; > (swapper ’a ’d ’(a d () c d))
;; (d a () c a)
;; > (swapper ’x ’y ’((x) y (z (x))))
;; ((y) x (z (y)))
;;
(define (swapper old new lst)
  (if (null? lst)
      '()
      (if (symbol? (car lst))
          (if (eqv? old (car lst))
              new
              old)
          (cons (swapper old new (car list))
                (swapper old new (cdr list))))))
;; Exercise 1.19 (list-set lst n x) returns a list like lst, except that the n-th
;; element, using zero-based indexing, is x.
;; > (list-set ’(a b c d) 2 ’(1 2))
;; (a b (1 2) d)
;; > (list-ref (list-set ’(a b c d) 3 ’(1 5 10)) 3)
;; (1 5 10)
;;
(define list-set
  (lambda (lst num object)
    (if (null? lst)
        '()
        (if (eqv? num 0)
            (cons object (cdr lst))
            (cons (car lst)
                  (list-set (cdr lst) (- num 1) object))))))
;; Exercise 1.20 (count-occurrences s slist) returns the number of occur-
;; rences of s in slist.
;; > (count-occurrences ’x ’((f x) y (((x z) x))))
;; 3
;; > (count-occurrences ’x ’((f x) y (((x z) () x))))
;; 3
;; > (count-occurrences ’w ’((f x) y (((x z) x))))
;; 0
;; 
;; Exercise 1.21 (product sos1 sos2), where sos1 and sos2 are each a list
;; of symbols without repetitions, returns a list of 2-lists that represents the Cartesian
;; product of sos1 and sos2. The 2-lists may appear in any order.
;; > (product ’(a b c) ’(x y))
;; ((a x) (a y) (b x) (b y) (c x) (c y))
;; 
;; Exercise 1.22 (filter-in pred lst) returns the list of those elements in
;; lst that satisfy the predicate pred.
;; > (filter-in number? ’(a 2 (1 3) b 7))
;; (2 7)
;; > (filter-in symbol? ’(a (b c) 17 foo))
;; (a foo)
;; 
;; Exercise 1.23 (list-index pred lst) returns the 0-based position of the
;; first element of lst that satisfies the predicate pred. If no element of lst satisfies
;; the predicate, then list-index returns #f.
;; > (list-index number? ’(a 2 (1 3) b 7))
;; 1
;; > (list-index symbol? ’(a (b c) 17 foo))
;; 0
;; > (list-index symbol? ’(1 2 (a b) 3))
;; #f
;; 
;; Exercise 1.24 (every? pred lst) returns #f if any element of lst fails to
;; satisfy pred, and returns #t otherwise.
;; > (every? number? ’(a b c 3 e))
;; #f
;; > (every? number? ’(1 2 3 5 4))
;; #t
;; 
;; Exercise 1.25 (exists? pred lst) returns #t if any element of lst satisfies
;; pred, and returns #f otherwise.
;; > (exists? number? ’(a b c 3 e))
;; #t
;; > (exists? number? ’(a b c d e))
;; #f
;; 
;; Exercise 1.26 (up lst) removes a pair of parentheses from each top-level ele-
;; ment of lst. If a top-level element is not a list, it is included in the result, as is.
;; The value of (up (down lst)) is equivalent to lst, but (down (up lst)) is
;; not necessarily lst. (See exercise 1.17.)
;; > (up ’((1 2) (3 4)))
;; (1 2 3 4)
;; > (up ’((x (y)) z))
;; (x (y) z)
;; 
;; Exercise 1.27 (flatten slist) returns a list of the symbols contained in
;; slist in the order in which they occur when slist is printed. Intuitively, flatten
;; removes all the inner parentheses from its argument.
;; > (flatten ’(a b c))
;; (a b c)
;; > (flatten ’((a) () (b ()) () (c)))
;; (a b c)
;; > (flatten ’((a b) c (((d)) e)))
;; (a b c d e)
;; > (flatten ’(a b (() (c))))
;; (a b c)
;; 
;; Exercise 1.28 (merge loi1 loi2), where loi1 and loi2 are lists of integers
;; that are sorted in ascending order, returns a sorted list of all the integers in loi1 and
;; loi2.
;; > (merge
;; (1 1 2 4
;; > (merge
;; (3 35 62
;; ’(1 4) ’(1 2 8))
;; 8)
;; ’(35 62 81 90 91) ’(3 83 85 90))
;; 81 83 85 90 90 91)
;; 
;; Exercise 1.29 (sort loi) returns a list of the elements of loi in ascending
;; > (sort ’(8 2 5 2 3))
;; (2 2 3 5 8)
;; Exercise 1.30 (sort/predicate pred loi) returns a list of elements sorted
;; by the predicate.
;; > (sort/predicate < ’(8 2 5 2 3))
;; (2 2 3 5 8)
;; > (sort/predicate > ’(8 2 5 2 3))
;; (8 5 3 2 2)
;; 
;; Exercise 1.31 Write the following procedures for calculating on a bintree (defi-
;; nition 1.1.7): leaf and interior-node, which build bintrees, leaf?, which tests
;; whether a bintree is a leaf, and lson, rson, and contents-of, which extract the
;; components of a node. contents-of should work on both leaves and interior
;; nodes.
;; 
;; Exercise 1.32 Write a procedure double-tree that takes a bintree, as represented
;; in definition 1.1.7, and produces another bintree like the original, but with all the
;; integers in the leaves doubled.
;; 
;; Exercise 1.33 Write a procedure mark-leaves-with-red-depth that takes a
;; bintree (definition 1.1.7), and produces a bintree of the same shape as the original,
;; except that in the new tree, each leaf contains the integer of nodes between it and the
;; root that contain the symbol red. For example, the expression
;; (mark-leaves-with-red-depth
;; (interior-node ’red
;; (interior-node ’bar
;; (leaf 26)
;; (leaf 12))
;; (interior-node ’red
;; (leaf 11)
;; (interior-node ’quux
;; (leaf 117)
;; (leaf 14))
;; which is written using the procedures defined in exercise 1.31, should return the bin-
;; tree
;; (red
;; (bar 1 1)
;; (red 2 (quux 2 2)))
;; 
;; Exercise 1.34  Write a procedure path that takes an integer n and a binary
;; search tree bst (page 10) that contains the integer n, and returns a list of lefts and
;; rights showing how to find the node containing n. If n is found at the root, it returns
;; the empty list.
;; > (path 17 ’(14 (7 () (12 () ()))
;; (26 (20 (17 () ())
;; ())
;; (31 () ()))))
;; (right left left)
;; 
;; Exercise 1.35  Write a procedure number-leaves that takes a bintree, and
;; produces a bintree like the original, except the contents of the leaves are numbered
;; starting from 0. For example,
;; (number-leaves
;; (interior-node ’foo
;; (interior-node ’bar
;; (leaf 26)
;; (leaf 12))
;; (interior-node ’baz
;; (leaf 11)
;; (interior-node ’quux
;; (leaf 117)
;; (leaf 14))
;; should return
;; (foo
;; (bar 0 1)
;; (baz
;; 2
;; (quux 3 4)))
;; 
;; Exercise 1.36  Write a procedure g such that number-elements from page 23
;; could be defined as
;; (define number-elements
;; (lambda (lst)
;; (if (null? lst) ’()
;; (g (list 0 (car lst)) (number-elements (cdr lst))))))
```
### Chapter 2

```scheme
 ;; ;;;; Chapter 2
;;
;; Exercise 2.1 Implement the four required operations for bigits. Then use your
;; implementation to calculate the factorial of 10. How does the execution time vary
;; as this argument changes? How does the execution time vary as the base changes?
;; Explain why.
(define base-n-zero
  (lambda () '()))
(define base-n-is-zero?
  (lambda (x) (zero? x)))
(define base-n-successor
  (define do-successor
    (lambda (n x)
      (if (base-n-is-zero? x)
        '1
        (if (eqv? (car x) (- n 1))
            (cons 0 (do-successor n (cdr x)))
            (cons (+ (car x) 1) (cdr x))))))
  (lambda (n x)
    (if (base-n-is-zero? x)
        '(1)
        (do-successor n x))
    ))
(define base-n-predecessor
  (lambda (n x)
    (if (base-n-is-zero? x)
        (print "You might want to get -1 but, eh, I don't want to support it, NYAHAHAHAHA!!")
        (if (eqv? (car x) 1)
            '()
            (if (eqv? (car x) 0)
                (cons (- n 1)
                      (base-n-predecessor n (cdr x)))
                (cons (- (car x) 1)
                      (cdr x))))
(define base-n-see-it)
;; Exercise 2.2 Analyze each of these proposed representations critically. To what
;; extent do they succeed or fail in satisfying the specification of the data type?

;; Exercise 2.3 Define a representation of all the integers (negative and nonnega-
;; tive) as diff-trees, where a diff-tree is a list defined by the grammar
;; Diff-tree :: = (one) | (diff Diff-tree Diff-tree)
;; The list (one) represents 1. If t 1 represents n 1 and t 2 represents n 2 , then
;; (diff t 1 t 2 ) is a representation of n 1 − n 2 .
;; So both (one) and (diff (one) (diff (one) (one))) are representations of
;; 1; (diff (diff (one) (one)) (one)) is a representation of − 1.
;; 1. Show that every number has infinitely many representations in this system.
;; 2. Turn this representation of the integers into an implementation by writing zero,
;; is-zero?, successor, and predecessor, as specified on page 32, except that
;; now the negative integers are also represented. Your procedures should take as
;; input any of the multiple legal representations of an integer in this scheme. For
;; example, if your successor procedure is given any of the infinitely many legal
;; representations of 1, it should produce one of the legal representations of 2. It is
;; permissible for different legal representations of 1 to yield different legal repre-
;; sentations of 2.
;; 3. Write a procedure diff-tree-plus that does addition in this representation.
;; Your procedure should be optimized for the diff-tree representation, and should
;; do its work in a constant amount of time (independent of the size of its inputs). In
;; particular, it should not be recursive.

;; Exercise 2.4 Consider the data type of stacks of values, with an interface consist-
;; ing of the procedures empty-stack, push, pop, top, and empty-stack?. Write a
;; specification for these operations in the style of the example above. Which operations
;; are constructors and which are observers?
Constructors:
(empty-stack)
(push val stack)
(pop stack)
Observers:
(pop stack)
(top stack)

;; Exercise 2.5 We can use any data structure for representing environments, if we
;; can distinguish empty environments from non-empty ones, and in which one can
;; extract the pieces of a non-empty environment. Implement environments using a
;; representation in which the empty environment is represented as the empty list, and
;; in which extend-env builds an environment that looks like
;; I am the tu.
;; This is called an a-list or association-list representation.

;; Exercise 2.6 Invent at least three different representations of the environment
;; interface and implement them.
;; 1. Binary Search Tree version:
(empty-env-bst)
(extend-env env (var val)) (var-exist?)
(apply-env env var)

;; 2. More flexible interface
(new-env env)
(extend-env env (var val var val ...)
(apply-env env (var ...))

;; 3. Nested environment
(new-empty-env father-env)
(extend-env env var val)
(apply-env env var)

;; Exercise 2.7 Rewrite apply-env in figure 2.1 to give a more informative error
;; message.

;; Exercise 2.8 Add to the environment interface an observer called empty-env?
;; and implement it using the a-list representation.
(define (emtpy-env? env)
  (if (eqv? (car env) 'empty-env)
      #t
      #f))

;; Exercise 2.9 Add to the environment interface an observer called has-binding?
;; that takes an environment env and a variable s and tests to see if s has an associated
;; value in env. Implement it using the a-list representation.
(define (has-binding? var env)
  (if (eqv? (car env) 'empty-env)
      #f
      (if (eqv? (car env) 'extend-env)
          (if (eqv? (cadr env) var)
              #t
              (has-binding? var (cadddr env)))
          (report-invalid-env))))

;; Exercise 2.10 Add to the environment interface a constructor extend-env* , and
;; implement it using the a-list representation. This constructor takes a list of variables,
;; a list of values of the same length, and an environment, and is specified by
;; (extend-env* (var 1 ... var k ) (val 1 ... val k ) f ) = g.


;; Exercise 2.11 A naive implementation of extend-env* from the preceding
;; exercise requires time proportional to k to run. It is possible to represent environ-
;; ments so that extend-env* requires only constant time: represent the empty envi-
;; ronment by the empty list, and represent a non-empty environment by the data structure
;; I am the tu.
;; Such an environment might look like
;; This is called the ribcage representation. The environment is represented as a list of
;; pairs called ribs; each left rib is a list of variables and each right rib is the correspond-
;; ing list of values.
;; Implement the environment interface, including extend-env* , in this representa-
;; tion.""

;; Exercise 2.12 Implement the stack data type of exercise 2.4 using a procedural
;; representation.

;; Exercise 2.13 Extend the procedural representation to implement empty-env?
;; by representing the environment by a list of two procedures: one that returns the
;; value associated with a variable, as before, and one that returns whether or not the
;; environment is empty.

;; Exercise 2.14 Extend the representation of the preceding exercise to include a
;; third procedure that implements has-binding? (see exercise 2.9).
;;
;; Exercise 2.15 Implement the lambda-calculus expression interface for the repre-
;; sentation specified by the grammar above.

;; Exercise 2.16 Modify the implementation to use a representation in which there
;; are no parentheses around the bound variable in a lambda expression.

;; Exercise 2.17 Invent at least two other representations of the data type of lambda-
;; calculus expressions and implement them.

;; Exercise 2.18 We usually represent a sequence of values as a list. In this represen-
;; tation, it is easy to move from one element in a sequence to the next, but it is hard
;; to move from one element to the preceding one without the help of context argu-
;; ments. Implement non-empty bidirectional sequences of integers, as suggested by
;; the grammar
;; NodeInSequence :: = (Int Listof(Int) Listof(Int))
;; The first list of numbers is the elements of the sequence preceding the current one,
;; in reverse order, and the second list is the elements of the sequence after the current
;; one. For example, (6 (5 4 3 2 1) (7 8 9)) represents the list (1 2 3 4 5 6
;; 7 8 9), with the focus on the element 6.
;; In this representation, implement the procedure number->sequence, which takes
;; a number and produces a sequence consisting of exactly that number. Also imple-
;; ment current-element, move-to-left, move-to-right, insert-to-left,
;; insert-to-right, at-left-end?, and at-right-end?.
;; For example:
;; > (number->sequence 7)
;; (7 () ())
;; > (current-element ’(6 (5 4 3 2 1) (7 8 9)))
;; 6
;; > (move-to-left ’(6 (5 4 3 2 1) (7 8 9)))
;; (5 (4 3 2 1) (6 7 8 9))
;; > (move-to-right ’(6 (5 4 3 2 1) (7 8 9)))
;; (7 (6 5 4 3 2 1) (8 9))
;; > (insert-to-left 13 ’(6 (5 4 3 2 1) (7 8 9)))
;; (6 (13 5 4 3 2 1) (7 8 9))
;; > (insert-to-right 13 ’(6 (5 4 3 2 1) (7 8 9)))
;; (6 (5 4 3 2 1) (13 7 8 9))
;; The procedure move-to-right should fail if its argument is at the right end of the
;; sequence, and the procedure move-to-left should fail if its argument is at the left
;; end of the sequence.

;; Exercise 2.19 A binary tree with empty leaves and with interior nodes labeled
;; with integers could be represented using the grammar
;; Bintree :: = () | (Int Bintree Bintree)
;; In this representation, implement the procedure number->bintree, which takes a
;; number and produces a binary tree consisting of a single node containing that num-
;; ber. Also implement current-element, move-to-left-son, move-to-right-
;; son, at-leaf?, insert-to-left, and insert-to-right. For example,
;; > (number->bintree 13)
;; (13 () ())
;; > (define t1 (insert-to-right 14
;; (insert-to-left 12
;; (number->bintree 13)))
;; > t1
;; (13
;; (12 () ())
;; (14 () ()))
;; > (move-to-left t1)
;; (12 () ())
;; > (current-element (move-to-left t1))
;; 12
;; > (at-leaf? (move-to-right (move-to-left t1)))
;; #t
;; > (insert-to-left 15 t1)
;; (13
;; (15
;; (12 () ())
;; ())
;; (14 () ()))

;; Exercise 2.20 In the representation of binary trees in exercise 2.19 it is easy to
;; move from a parent node to one of its sons, but it is impossible to move from a son to
;; its parent without the help of context arguments. Extend the representation of lists in
;; exercise 2.18 to represent nodes in a binary tree. As a hint, consider representing the
;; portion of the tree above the current node by a reversed list, as in exercise 2.18.
;; In this representation, implement the procedures from exercise 2.19. Also implement
;; move-up, at-root?, and at-leaf?.

;; Exercise 2.21 Implement the data type of environments, as in section 2.2.2, using
;; define-datatype. Then include has-binding? of exercise 2.9.

;; Exercise 2.22 Using define-datatype, implement the stack data type of exer-
;; cise 2.4.

;; Exercise 2.23 The definition of lc-exp ignores the condition in definition 1.1.8
;; that says “Identifier is any symbol other than lambda.” Modify the definition of
;; identifier? to capture this condition. As a hint, remember that any predicate
;; can be used in define-datatype, even ones you define.

;; Exercise 2.24 Here is a definition of binary trees using define-datatype.
;; (define-datatype bintree bintree?
;; (leaf-node
;; (num integer?))
;; (interior-node
;; (key symbol?)
;; (left bintree?)
;; (right bintree?)))
;; Implement a bintree-to-list procedure for binary trees, so that (bintree-to-
;; list (interior-node ’a (leaf-node 3) (leaf-node 4))) returns the list
;; (interior-node
;; a
;; (leaf-node 3)
;; (leaf-node 4))

;; Exercise 2.25 Use cases to write max-interior, which takes a binary tree of
;; integers (as in the preceding exercise) with at least one interior node and returns the
;; symbol associated with an interior node with a maximal leaf sum.
;; > (define tree-1
;; (interior-node ’foo (leaf-node 2) (leaf-node 3)))
;; > (define tree-2
;; (interior-node ’bar (leaf-node -1) tree-1))
;; > (define tree-3
;; (interior-node ’baz tree-2 (leaf-node 1)))
;; > (max-interior tree-2)
;; foo
;; > (max-interior tree-3)
;; baz
;; The last invocation of max-interior might also have returned foo, since both the
;; foo and baz nodes have a leaf sum of 5.

;; Exercise 2.26 Here is another version of exercise 1.33. Consider a set of trees
;; given by the following grammar:
;; Red-blue-tree
;; :: = Red-blue-subtree
;; Red-blue-subtree :: = (red-node Red-blue-subtree Red-blue-subtree)
;; :: = (blue-node { Red-blue-subtree } ∗ )
;; :: = (leaf-node Int)
;; Write an equivalent definition using define-datatype, and use the resulting inter-
;; face to write a procedure that takes a tree and builds a tree of the same shape, except
;; that each leaf node is replaced by a leaf node that contains the number of red nodes
;; on the path between it and the root.

;; Exercise 2.27 Draw the abstract syntax tree for the lambda calculus expressions
;; ((lambda (a) (a b)) c)
;; (lambda (x)
;; (lambda (y)
;; ((lambda (x)
;; (x y))
;; x)))

;; Exercise 2.28 Write an unparser that converts the abstract syntax of an lc-exp into
;; a string that matches the second grammar in this section (page 52).

;; Exercise 2.29 Where a Kleene star or plus (page 7) is used in concrete syntax, it
;; is most convenient to use a list of associated subtrees when constructing an abstract
;; syntax tree. For example, if the grammar for lambda-calculus expressions had been
;; Lc-exp :: = Identifier
;; var-exp (var)
;; :: = (lambda ( { Identifier } ∗ ) Lc-exp)
;; lambda-exp (bound-vars body)
;; :: = (Lc-exp { Lc-exp } ∗ )
;; app-exp (rator rands)
;; then the predicate for the bound-vars field could be (list-of identifier?),
;; and the predicate for the rands field could be (list-of lc-exp?). Write a
;; define-datatype and a parser for this grammar that works in this way.

;; Exercise 2.30 The procedure parse-expression as defined above is fragile:
;; it does not detect several possible syntactic errors, such as (a b c), and aborts with
;; inappropriate error messages for other expressions, such as (lambda). Modify it so
;; that it is robust, accepting any s-exp and issuing an appropriate error message if the
;; s-exp does not represent a lambda-calculus expression.

;; Exercise 2.31  Sometimes it is useful to specify a concrete syntax as a sequence
;; of symbols and integers, surrounded by parentheses. For example, one might define
;; the set of prefix lists by
;; Prefix-list :: = (Prefix-exp)
;; Prefix-exp :: = Int
;; :: = - Prefix-exp Prefix-exp
;; so that (- - 3 2 - 4 - 12 7) is a legal prefix list. This is sometimes called Polish
;; prefix notation, after its inventor, Jan Łukasiewicz. Write a parser to convert a prefix-
;; list to the abstract syntax
;; (define-datatype prefix-exp prefix-exp?
;; (const-exp
;; (num integer?))
;; (diff-exp
;; (operand1 prefix-exp?)
;; (operand2 prefix-exp?)))
;; so that the example above produces the same abstract syntax tree as the sequence of
;; constructors
;; (diff-exp
;; (diff-exp
;; (const-exp 3)
;; (const-exp 2))
;; (diff-exp
;; (const-exp 4)
;; (diff-exp
;; (const-exp 12)
;; (const-exp 7))))
;; As a hint, consider writing a procedure that takes a list and produces a prefix-exp
;; and the list of leftover list elements.
```

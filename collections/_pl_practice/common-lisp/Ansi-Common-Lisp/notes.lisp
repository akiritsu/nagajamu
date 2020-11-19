;;;;

;; 1. LEXICAL CLOUJURE!

;; 2. VALUES! Muiltiple return value.

;; 3. Macro Characters.
CL-USER> (car (read-from-string "'a"))
QUOTE

;; 4. SYMBOLS.
CL-USER> (symbol-name 'abc)
"ABC"
;; Any sequences of characters between vertical bar is regarded as symbols.
CL-USER> (list '|Relax| '|you| '|GUYS| '|123| '|Ansi Common Lisp|)
(|Relax| |you| GUYS |123| |Ansi Common Lisp|)

;; The first time a symbol introduced in a package, it would be INTERNed into the packages, usually, COMMON-LISP-USER. Uninterned symbols is called GENSYMS.

;; 5. EVAL
;; EVAL processes on raw list. The raw list will be either compiled next step or interperted, resulting a low performance.
;; Evaluate without lexical context, causing LET and LET* lose efficacy.

;; 6. Two Models *

;; (1) Message-passing model

;; (2) Generic function model

;; 6. Interactive VS. Interpreted

;; 7. Debugging

;; Break loops.

;; Traces and backtraces

(trace foo)
(untrace foo)

;; When nothing happens

;; No value/Unbound

;; Unexpected nils.

(ecase ...)

;; Renaming

;; Keywords as optional parameters

;; Misdeclarations

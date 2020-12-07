---

title: Ansi Common Lisp
---



## Notes
```elisp
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
```
## HTML Generator
```elisp
;;;; An Example of Bottom-up Programming

;;; Html Utilities
(defmacro as (tag content)
  `(format t "<~(~A~)>~A</~(~A~)>"
           ',tag ,content ',tag))

(defmacro with (tag &rest body)
  `(progn
     (format t "~&<~(~A~)>~%" ',tag)
     ,@body
     (format t "~&</~(~A~)>~%" ',tag)))

(defun brs (&optional (n 1))
  (fresh-line)
  (dotimes (i n)
    (princ "<br>"))
  (terpri))

(defun html-file (base)
  (format nil "~(~A~).html" base))

(defmacro page (name title &rest body)
  (let ((ti (gensym)))
    `(with-open-file (*standard-output*
                      (html-file ,name)
                      :direction :output
                      :if-exist :supersede)
       (let ((,ti ,title))
         (as title ,ti)
         (with center
               (as h2 (string-upcase ,ti)))
         (brs 3)
         ,@body))))
```

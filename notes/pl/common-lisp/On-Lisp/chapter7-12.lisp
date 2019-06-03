;;;; Foundations of Macro

;;; Chapter 7

;; 1.Construct macro with:
;; backquote, comma, comma-at, progn, destructuring-bind, defmacro, symbolmacro...

;; 2.Simple macros: relocating parameters.
;; 3.Macro as programs: macro can use all Lisp features.

;;; Chapter 8

;; 1.When to use macros? There are two things can be done by macros only:
;;   Control (or prevernt) the evaluation of their arguments.
;;   Be expanded right into the calling context.

;; 2.Seven advantages of macro: (Controlling evaluation brings 1 to 4, and rests done by expanding.)
;; (1) Transformation. When we need to know more about arguments, e.g. (setf (car x) 'a). (car x) returns the first elements of x. When changing it, setf must get more information about (car x), that is, (progn (rplaca x 'a) 'a).
;; (2) Binding. Operating lexical varibles in the source code.(i.e., Keep the argument unevaluated.)
;; (3) Optional Evaluated.
;; (4) Muiltiple Evaluated.(Functions only evaluate their arguments one time, at the point of funcion call.)
;; (5) Using the calling scope. (Behaving like dynamic scope.)
;; (6) Wrapping a new environment.
;; (7) Reduce funcion calls.(Behaving like functions declared INLINE.)

;; 3.Advantages
;; (1) A macro call involves computation at two times: when the macro is expanding, and when the expansion is evaluated.
;; (2) Using codes to write codes, for easier to write and read, more integrated.
;; (3) Saving functions calls.

;; 4.Disadvatages
;; (1) Functions are codes, can be transmited as arguments, but macros can't.
;; (2) Clarity of source code.
;; (3) Recursion.

;; 5.Applications of macro.
;; (1) Utilities.
;; (2) Embedded languages.
;; (3) Interfaces.
;; (4) Abstract patterns (to make codes simpler and shorter.)

;;; Chapter 9 - 10

;; 1.Variable capture
(defmacro with-gynsyms (syms &body body)
  `(let ,(mapcar #'(lambda (s) `(,s (gensym))) syms)
     ,@body))

;; 2.Number of Evaluatioins.
;; 3.Order fo Evaluations.
;; 4.Non-funcitonal Expanders -- We should not modify any arguments of macros.
;; 5.Macros are hard to recur -- 1,keep it function; 2,change recursion to iteration; 3,use LABEL to create local recurable functions; 4, call assist funcitons; 5,a macro can recur on it's augments,not local variables.

;;; Chapter 11

;; 1.Creating context
;; 2.with-*
;; 3.Conditional evaluation
;; 4.Iteration
;; 5.Multi-value iteration


;;; Chapeter 12

;; 1.Generalized Valiables can changed by SETF.
;; 2.DEFINE-MODIFY-MACRO, GET-SETF-EXPANSION, DEFSETF
;;

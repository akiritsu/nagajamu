;;;; Loop for prime numbers
(in-package :org.aki.lisp-practise.c8)
;;; Decide the input number is a prime or not
(defun primep (number)
  (when (> number 1)
    (loop for fac from 2 to (isqrt number) never (zerop (mod number fac)))))

;;; Return next prime bigger than the input number
(defun next-prime (number)
  (loop for n from number when (primep n) return n))

;;; The First implementation:
;;; Param1: var list:(p a b),let p from a to b.
;;; Param2: form list:operations attempt to do.
(defmacro do-primes (var-and-range &rest body)
  (let ((var    (first    var-and-range))
	(start  (second   var-and-range))
	(end    (third    var-and-range)))
    `(do ((,var (next-prime ,start) (next-prime (1+ ,var))))
	 ((> ,var ,end))
       ,@body)))

;;; The Second impl:
;;; Macro can destructure a simple paramater list 
(defmacro do-primes2 ((var start end) &rest body)
  `(do ((,var (next-prime ,start) (next-prime (1+ ,var))))
       ((> ,var ,end))
     ,@body))
;;; issue:Unexpected muiltiple eval.When refereced as:
;;; (do-primes (p 0 (random 100))
;;;    (format t "~d" p))

;;; The Third impl:
(defmacro do-primes3 ((var start end) &rest body)
  `(do ((ending-value ,end)
        (,var (next-prime ,start) (next-prime (1+ ,var))))
       ((> ,var ,end))
     ,@body))
;;; Leading two more loophole:
;;; 1. Error binding a variable named "ending-value" unluckily.
;;; 2. var is evaled at a wrong time.Eval order must be same to referenced order by macro.

;;; The forth impl,resolve loophole2

;;; The fifth impl:
;;; Using (gensym)
(defmacro do-primes5 ((var start end) &body body)
  (let ((ending-value-name (gensym)))
    `(do ((,var (next-prime ,start) (next-prime (1+ ,var)))
          (,ending-value-name ,end))
         ((> ,var ,ending-value-name))
       ,@body)))
;;; Macro^2
(defmacro with-gensyms ((&rest names) &body body)
  `(let ,(loop for n in names collect `(,n (gensym)))
     ,@body))

;;; The sixth impl with with-gensyms

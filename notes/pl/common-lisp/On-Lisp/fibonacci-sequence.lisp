;;;; Fibonacci Sequence

;; Iteration
;; Cost 5s to 200000th item
(defun fibonacci-iteration (x)
  (do ((i 0 (1+ i))
       (j 0 k)
       (k 1 (+ j k)))
      ((= i x) j)))
;; Recursion
;; Cost 10s to 35th item ,233
(defun fibonacci-recursion (x)
  (if (<= x 1) x (+ (fibonacci-recursion (- x 1)) (fibonacci-recursion (- x 2)))))

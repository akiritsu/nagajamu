#lang racket
(define (reduce fn 
                lst
                #:from-end [from-end #f]
                #:start [start 0]
                #:end [end (length lst)]
                #:initial-value [initial-value #f])
  (define (rotate lst) '...)
  (define (insert pos lst val) '...)
  (cond
    ((null? lst) '())
    (from-end (reduce fn (rotate lst) #:start start  #:end end #:initial-value initial-value))
    (initial-value (reduce fn (insert start lst initial-value) lst #:start start  #:end (+ 1 end)
    (#t (if (not (zero? start))
              (reduce fn (cdr lst) #:start (- start 1) #:end (- end 1))
              (if (not (zero? end))
                  (if (null? (cdr lst))
                      (car lst)
                      (fn (car lst) (reduce fn (cdr lst) #:start start #:end (- end 1))))
                  (car lst))))))))

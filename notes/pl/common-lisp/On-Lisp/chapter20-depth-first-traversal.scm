;;; Depth first traversal of trees

;;; Definition :
;;; Nodes: a, b, c or a Tree
;;; Tree: (parent-node) or (parent-node, child-node1, child-node2...)

(define tree1 '(a b c d (b b c d (c b c d))))
(define tree2 '(e b d c d a e))

;;; Simple depth first traversal
(define (dft tree)
  (cond
   [(null? tree) '()]
   [(atom? tree) (write tree)]
   [#t (dft (car tree))
       (dft (cdr tree))]))

;;; With call/cc
(define *saved* '())

(define (dft-node tree)
  (cond [(null? tree) (restart)]
        [(not (pair? tree)) tree]
        [#t (call/cc (lambda (cc)
                       (set! *saved*
                             (cons (lambda ()
                                     (cc (dft-node (cdr tree))))
                                   *saved*))
                       (dft-node (car tree))))]))

(define (restart)
  (if (null? *saved*)
      'done
      (let ((cont (car *saved*)))
        (set! *saved* (cdr *saved*))
        (cont))))

(define (dft2 tree)
  (set! *saved* '())
  (let ((node (dft-node tree)))
    (cond [(eq? node 'done) (void)]
          [#t (write node)
              (restart)])))

(define (cross-product t1 t2)
  (let ((node1 (dft-node t1)))
    (if (eq? node1 'done)
        'done
        (list node1 (dft-node t2)))))

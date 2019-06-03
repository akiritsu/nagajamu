;;;;

(defun  filter (predicate x lst)
  (if (null lst)
      '()
      (if (funcall predicate  x (car lst))
          (cons (car lst) (filter predicate x (cdr lst)))
          (filter predicate x (cdr lst)))))
(defun qsort (lst)
  (if (null lst)
      '()
      (append (qsort (filter '> (car lst) (cdr lst)))
              (list (car lst))
              (qsort (filter '< (car lst) (cdr lst))))))

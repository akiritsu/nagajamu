;; Represent ENV as a procedure: takes the search-var and returns the value.

;; empty-env : () → Env
(define (empty-env)
  (list
   (lambda (search-var)
     (report-no-binding-found search-var))
   (lambda ()
     #t)
   (lambda (search-var)
     (report-no-binding-found search-var))))

;; extend-env : Var × SchemeVal × Env → Env
(define (extend-env saved-var saved-val saved-env)
  (list
   (lambda (search-var)
     (if (eqv? search-var saved-var)
         saved-val
         (apply-env (car saved-env) search-var)))
   (lambda ()
     (or #t (cdr saved-env)))
   (lambda (search-var)
     (if (eqv? search-var saved-var)
         #t
         (has-binding? env search-var)))))

;; apply-env : Env × Var → SchemeVal
(define apply-env
  (lambda (env search-var)
    ((car env) search-var)))

(define report-no-binding-found
  (lambda (search-var)
    (error ’apply-env "No binding for ~s" search-var)))

;; E 2.13
(define (empty-env? env)
  (cadr env))

;; E 2.14
(define (has-binding? env)
  (caddr env))

;; empty-env : () → Env
(define empty-env
  (lambda () (list 'empty-env)))

;; extend-env : Var × SchemeVal × Env → Env
(define extend-env
  (lambda (var val env)
    (list 'extend-env var val env)))

;; apply-env : Env × Var → SchemeVal
(define apply-env
  (lambda (env search-var)
    (cond
     ((eqv? (car env) 'empty-env)
      (report-no-binding-found search-var))
     ((eqv? (car env) 'extend-env)
      (let ((saved-var (cadr env))
            (saved-val (caddr env))
            (saved-env (cadddr env)))
        (if (eqv? search-var saved-var)
            saved-val
            (apply-env saved-env search-var))))
     (else
      (report-invalid-env env)))))

(define report-no-binding-found
  (lambda (search-var)
    (error 'apply-env "No binding for ~s" search-var)))

(define report-invalid-env
  (lambda (env)
    (error 'apply-env "Bad environment: ~s" env)))

;; E 2.8
;; empty-env? : env -> bool
(define (emtpy-env? env)
  (if (eqv? (car env) 'empty-env)
      #t
      #f))

;; E 2.9
;; has-binding? : var env -> bool
(define (has-binding? var env)
  (if (eqv? (car env) 'empty-env)
      #f
      (if (eqv? (car env) 'extend-env)
          (if (eqv? (cadr env) var)
              #t
              (has-binding? var (cadddr env)))
          (report-invalid-env))))

;; E 2.10
;; extend-env* : var-list val-list env -> env

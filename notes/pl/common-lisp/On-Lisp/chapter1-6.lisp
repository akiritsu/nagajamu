;;;; Functions and Closures

;;; Chapter 1

;; 1. Programming bottom-up : changing the language to suit the problem.

;;; Chapter 2

;; 1. Functions as elements of a property list.

;; 2. Closure
(let ((counter 0))
  (defun new-id () (incf counter))
  (defun reset-id () (setq counter 0)))

;; 3. Local functions with recursive LABELS
;; Example 1: using MAPCAR with closure
(defun list+ (lst n)
  (mapcar #'(lambda (x) (+ x n)) lst))
;; MAPCAR is applied with a lambda expression in a closure. But lambda-expression can't be recurred.
;; Using LABELS as the form outline:
(labels ((function-name parameter-list function-body)
         (...))
  body)
;; Example 2: using MAPCAR with closure and recursion
(defun count-instances (obj lsts)
  (label ((instances-in (lst)
                        (if (consp lst)
                            (+ (if (eq (car lst) obj) 1 0)
                               (instances-in (cdr lst)))
                            0)))
         (mapcar #'instances-in lsts)))

;; 4. Tail recursion
;; Put
(proclaim '(optimize speed))
;; at the top of the file, to ensure the compiler can take advantage of tail-recursion optimization.

;;; Chapter 3

;; How can it be FP?
;; Return new, causing no side-effects.
;; Return muiltiple values, causing no side-effects.
;; Funcions should only modify their return values, not arguments; functions should not share objects with codes don't obay the rules preceding; funcions should not return values can't be modified securely.
;; WRONG:
(defun exclaim (exp) (append exp '(oh my)))
;; when
> (exclaim '(mother))
(MOTHER OH MY)
> (NCONC * '(god))
(MOTHER OH MY GOD)
> (exlaim '(pigu))
(PIGU OH MY GOD)
;; RIGHT:
(defun exclaim (exp) (append exp (list 'oh 'my)))

;; 2. Use them as least as you can:
set setq setf psetf psetq
incf decf
push pop pushnew
rplaca rplacd
shiftf
remf remprop remhash
;; and let*.

;; 3. Design programs easy to test
;; Try to segregate side-effects in a few functions, allowing the greater part of the program to be written in a purely functional style.
;; If a funcion must perform side-effects, the try at least to give it a functional interface.
;; Give eache function a single, well-defined purpose.

;;; Chapter 4

;; 1. Lisp programming entails, among other things, spinning off new utilities as you need them.
;; Detailed in utilities.lisp
(proclaim '(inline last1 single append1 conc1 mklist))

;; f004.last1
;; Return the last element of a list, without error checking.
(defun last1 (lst)
  (car (last lst)))

;; f005.single
;; Test whether the argument is a list of one element.
(defun single (lst)
  (and (consp lst) (not (cdr lst))))

;; f006.append1
;; Append a new element at the end of a list.
(defun append1 (lst obj)
  (append lst (list obj)))

;; f007.conc1
(defun conc1 (lst obj)
  (nconc lst (list obj)))

;; f008.mklist
;; Make sure the argument is returned as a list.
(defun mklist (obj)
  (if (listp obj) obj (list obj)))

;; f008.longer-than
;; A more efficient way to compare two list.
(defun longer-than (x y)
  (labels ((compare (x y)
             (and (consp x)
                  (or (null y)
                      (compare (cdr x) (cdr y))))))
    (if (and (listp x) (listp y))
        (compare x y)
        (> (length x) (length y)))))

;; f009.filter
;; Pass a function and a list, return a list of whatever non-nil values are returned by the function as it is applied to the element of the list.
(defun filter (fn lst)
  (let ((acc nil))
    (dolist (x lst)
      (let ((val (funcall fn x)))
        (if val
            (push val acc)))
      (nreverse acc))))

;; f010.group
;; Argument: a list, a number n
;; Return: new list in which the elements of l are grouped into sublists of length n.The remainder is put in a final sublist.
(defun group (source n)
  (if (zerop n) (error "zero length"))
  (labels ((rec (source acc)
             (let ((rest (nthcdr n source)))
               (if (consp rest)
                   (rec rest (cons (subseq source 0 n) acc))
                   (nreverse (cons source acc))))))
    (if source
        (rec source nil)
        nil)))

;; f011.flatten
;; Argument: a tree
;; Return: new list consist of non-null leaves.
(defun flatten (x)
  (labels ((rec (x acc)
             (cond ((null x ) acc)
                   ((atom x) (cons x acc))
                   ((t (rec (car x) (rec (cdr x) acc)))))))
    (rec x nil)))

;; f012.prune
;; The tree oriented funtion similar to remove-if.
(defun prune (test tree)
  (labels ((rec (tree acc)
             (cond ((null tree) (nreverse acc))
                   ((consp (car tree))
                    (rec (cdr tree)
                         (cons (rec (car tree) nil) acc)))
                   (t (rec (cdr tree)
                           (if (funcall test (car tree))
                               acc
                               (cons (car tree) acc)))))))
    (rec tree nil)))

;; f013.find2
;; A more efficient way to find a val-key pair in a list.
(defun find2 (fn lst)
  (if (null lst)
      nil
      (let ((val (funcall fn (car lst))))
        (if val
            (val
             (values (car lst) val)
             (find2 fn (cdr lst)))))))

;; f014.before
;; A more efficient way to test whether X is before y. If so, return a list from the first A before B to end.
(defun before (x y lst &key (test #'eql))
  (and lst
       (let ((first (car lst)))
         (cond ((funcall test y first) nil)
               ((funcall test x first) lst)
               (t (before x y (cdr lst) :test test))))))

;; f015.after
;; Ennnn....
(defun after (x y lst &key (test #'eql))
  (let ((rest (before y x lst :test test)))
    (and rest (menber x rest :test test))))

;; f016.duplicate
(defun duplicate (obj lst &key (test #'eql))
  (member obj (cdr (member obj lst :test test)) :test test))

;; f017.split-if
;; >(split-if #'(lambda (x) (> x 4)) '(1 2 3 4 5 6 7 8)
;; (1 2 3 4)
;; (5 6 7 8)
(defun split-if (fn lst)
  (let ((acc nil))
    (do ((src lst (cdr src)))
        ((or (null src) (funcall fn (car src)))
         (values (nreverse acc) src))
      (push (car src) acc))))

;; f018.most
;; FN takes only one element, and evaluate it.
(defun most (fn lst)
  (if (null lst)
      (values nil nil)
      (let* ((wins (car lst))
             (max (funcall fn wins)))
        (dolist (obj (cdr lst))
          (let ((score (funcall fn obj)))
            (when (> score max)
              (setq wins obj
                    max  score))))
        (values wins max))))

;; f019.best
;; FN takes the best element before and the current element in the LST and compare them.
(defun best (fn lst)
  (if (null lst)
      nil
      (let ((wins (car lst)))
        (dolist (obj (cdr lst))
          (if (funcall fn obj wins)
              (setq wins obj)))
        wins)))

;; f020.mostn
(defun mostn (fn lst)
  (if (null lst)
      (values nil nil)
      (let ((result (list (car lst)))
            (max (funcall fn (car lst))))
        (dolist (obj (cdr lst))
          (let ((score (funcall fn obj)))
            (cond ((> score max)
                   (setq max    score
                         result (list obj)))
                  ((= score max)
                   (push obj result)))))
        (values (nreverse result) max))))

;; f021.mapa-b
(defun mapa-b (fn a b &optional (step 1))
  (do ((i a (+ i step))
       (result nil))
      ((> i b) (nreverse result))
    (push (funcall fn i) result)))

;; f022.map0-n
(defun map0-n (fn n)
  (mapa-b fn 0 n))

;; f023.map1-n
(defun map1-n (fn n)
  (mapa-b fn 1 n))

;; f024.map->
(defun map-> (fn start test-fn succ-fn)
  (do ((i start (funcall succ-fn i))
       (result nil))
      ((funcall test-fn i) (nreverse result))
    (push (funcall fn i) result)))
;; use map-> to define mapa-b
(defun mapa-b (fn a b &optional (step 1))
  (map-> fn
         a
         #'(lambda (x) (> x b))
         #'(lambda (x) (+ x step))))

;; f025.mappend
(defun mappend (fn &rest lsts)
  (apply #'append (apply)))

;; f026.mapcars
(defun mapcars (fn &rest lsts)
  (let ((result nil))
    (dolist (lst lsts)
      (dolist (obj lst)
        (push (funcall fn obj) result)))
    (nreverse result)))

;; f027.rmapcar
(defun rmapcar (fn &rest args)
  (if (some #'atom args)
      (apply fn args)
      (apply #'mapcar
             #'(lambda (&rest args)
                 (apply #'rmapcar fn args))
             args)))

;; f028.readlist
(defun readlist (&rest args)
  (values (read-from-string
           (concatenate 'string "(" (apply #read-line args) ")"))))

;; f029.prompt
(defun prompt (&rest args)
  (apply #'format *query-io* args)
  (read *query-io*))

;; f030.bread-loop
(defun break-loop (fn quit &rest args)
  (format *query-io* "Entering break-loop.~%")
  (loop
     (let ((in (apply #'prompt args)))
       (if (funcall quit in)
           (return)
           (format *query-io* "~a~%" (funcall fn in))))))

;; f031.mkstr
(defun mkstr (&rest args)
  (with-output-to-string (s)
    (dolist (a args) (princ a s))))

;; > (mkstr pi ” pieces of ” ’pi)
;; ”3.141592653589793 pieces of PI”


;; f032.symb
(defun symb (&rest args)
  (values (intern (apply #'mkstr args))))

;; > (symb ’ar ”Madi” #\L #\L 0)
;; |ARMadiLL0|


;; f033.reread
(defun reread (&rest args)
  (values (read-from-string (apply #'mkstr args))))

;; f034.explode
(defun explode (sym)
  (map 'list #'(lambda (c)
                 (intern (make-string 1 :initial-element c)))
       (symbol-name sym)))


;;; Chapter 5

;; u035.! and def!
;; By defining an operator to return the destructive counterpart of a function, we would not have to refer to the destructive functions directly.
(defvar *!equivs* (make-hash-table))

(defun ! (fn)
  (or (gethash fn *!equivs*) fn))

(defun def! (fn fn!)
  (setf (gethash fn *!equivs*) fn!))

;; (def! #'remove-if #'delete-if)
;; (funcall (! #'remove-if) #'oddp lst)

;; u036.memoize
;; MEMOIZE used to create a function that needn't to be evaluated for times.
(defun memoize (fn)
  (Let ((cache (make-hash-table :test #'equal)))
    #'(lambda (&rest args)
        (multiple-value-bind (val win) (gethash args cache)
          (if win
              val
              (setf (gethash args cache)
                    (apply fn args)))))))
;; (setq slowid (memoize #'(lambda (x) (sleep 5) x)))
;; (time (funcall slowid 1))

;; u037.compose
;; Compose functions. All the functions given as arguments to COMPOSE must be functions of one argument, except the last.
(defun compose (&rest fns)
  (if fns
      (let ((fn1 (car (last fns)))
            (fns (butlast fns)))
        #'(lambda (&rest args)
            (reduce #'funcall fns
                    :from-end t
                    :initial-value (apply fn1 args))))
      #'identity))
;; u038.fif
;; u039.fint
;; u040.fun

(defun fif (if then &optional else)
  #’(lambda (x)
      (if (funcall if x)
          (funcall then x)
          (if else (funcall else x)))))
(defun fint (fn &rest fns)
  (if (null fns)
      fn
      (let ((chain (apply #’fint fns)))
        #’(lambda (x)
            (and (funcall fn x) (funcall chain x))))))
(defun fun (fn &rest fns)
  (if (null fns)
      fn
      (let ((chain (apply #’fun fns)))
        #’(lambda (x)
            (or (funcall fn x) (funcall chain x))))))

;; u041.lrec
;; List recurser
(defun lrec (rec &optional base)
  (labels ((self (lst)
             (if (null lst)
                 (if (funcionp base)
                     (funcall base)
                     base)
                 (funcall rec (car lst)
                          #'(lambda () self (cdr lst))))))))
;; copy-list
;; (lrec #’(lambda (x f) (cons x (funcall f))))

;; u042.ttrav
;; Tree traverser
(defun ttrav (rec &optional (base #'identity))
  (labels ((self (tree)
             (if (atom tree)
                 (if (functionp base)
                     (funcall base tree)
                     base)
                 (funcall rec (self (car tree))
                          (if (cdr tree)
                              (self (cdr tree)))))))
    #'self))
;; count-leaves
;; (ttrav #'(lambda (l r) (+ l (or r 1))) 1)

;; u043.trec
;; Stop when found.
(defun trec (rec &optional (base #'identity))
  (labels (tree)
    ((self (tree)
           (if (atom tree)
               (if (functionp base)
                   (funcall base tree)
                   base)
               (funcall rec tree
                        #'(lambda ()
                            (self (car tree)))
                        #'(lambda ()
                            (if (cdr tree)
                                (self (cdr tree))))))))
    #'self))

;;; Chapter 6

;; 1.Closures have three useful properties:: they are active, they have local state, and we can make multiple instance of them.

;; 2.There's a pattern for programs behaving as network: by representing the nodes as closures, we are able to transform network programs entirely into code.

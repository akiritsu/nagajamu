;;;; Utilities

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Functions
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Macros
;;
;; m001.with-gensyms
;; m002.once-only
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Utilities
;;
;; u003.binary-data
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Define package
(in-package :cl-user)

(defpackage :com.akiritsu.utilities
  (:use :common-lisp)
  (:export
                                        ; m001
   :with-gensyms
                                        ; m002
   :once-only
                                        ; u003
   :define-binary-class
   :define-tagged-binary-class
   :define-binary-type
   :read-value
   :write-value
   :*in-progress-objects
   :parent-of-type
   :current-binary-object
   :+null+
                                        ; others
   :last1
   :single
   :append1
   :conc1
   :mklist
   :longer-than
   :filter
   :group
   :flatten
   :prune
   :find2
   :before
   :after
   :duplicate
   :split-if
   :most
   :best
   :mostn
   :mapa-b
   :map0-n
   :map1-n
   :map->
   :mappend
   :mapcars
   :rmapcar
   :readlist
   :prompt
   :bread-loop
   :mkstr
   :symb
   :reread
   :explode
                                        ; f4-f34,On Lisp chapter4
   ))

(in-package :com.akiritsu.utilities)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; m001.with-gensyms

(defmacro with-gensyms ((&rest names) &body body)
  `(let ,(loop for n in names collect `(,n (gensym)))
     ,@body))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; m002.once-only
;; Evaluates certain macro arguments once only and in a particular order

(defmacro once-only ((&rest names) &body body)
  (let ((gensyms (loop for n in names collect (gensym))))
    `(let (,@(loop for g in gensyms collect `(,g (gensym))))
       `(let (,,@(loop for g in gensyms for n in names collect ``(,,g ,,n)))
          ,(let (,@(loop for n in names for g in gensyms collect `(,n ,g)))
                ,@body)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; u003.binary-data

(defun as-keyword (sym) (intern (string sym)))

(defun slot->defclass-slot (spec)
  (let ((name (first spec)))
    `(,name :initarg ,(as-keyword name) :accessor ,name)))


;; Read and write object

(defvar *in-progress-objects* nil)

(defgeneric read-object (object stream)
  (:method-combination progn :most-specific-last)
  (:documentation "Fill in the slots of object from stream."))

(defmethod read-object :around (object stream)
  (declare (ignore stream))
  (let ((*in-progress-objects* (cons object *in-progress-objects*)))
    (call-next-method)))

(defgeneric write-object (object stream)
  (:method-combination progn :most-specific-last)
  (:documentation "Write out the slots of object to the stream."))

(defmethod write-object :around (object stream)
  (declare (ignore stream))
  (let ((*in-progress-objects* (cons object *in-progress-objects*)))
    (call-next-method)))

;; Read and write value

(defgeneric read-value (type stream &key)
  (:documentation "Read a value of the given type from the stream"))

(defun mklist (x) (if (listp x) x (list x)))

(defun normalize-slot-spec (spec)
  (list (first spec) (mklist (second spec))))

(defun slot->read-value (spec stream)
  (destructuring-bind (name (type &rest args)) (normalize-slot-spec spec)
    `(setf ,name (read-value ',type ,stream ,@args))))

(defmethod read-value ((type symbol) stream &key)
  (let ((object (make-instance type)))
    (read-object object stream)
    object))

(defgeneric write-value (type stream value &key)
  (:documentation "Write a value as the given type to the stream."))

(defun slot->write-value (spec stream)
  (destructuring-bind (name (type &rest args)) (normalize-slot-spec spec)
    `(write-value ',type ,stream ,name ,@args)))

(defmethod write-value ((type symbol) stream value &key)
  (assert (typep value type))
  (write-object value stream))

;; Inheriting slots
;; NAME is a symbol of binary-classes

(defun direct-slots (name)
  (copy-list (get name 'slots)))

(defun inherited-slots (name)
  (loop for super in (get name 'superclasses)
     nconc (direct-slots super)
     nconc (inherited-slots super)))

(defun all-slots (name)
  (nconc (direct-slots name) (inherited-slots name)))

(defun new-class-all-slots (slots superclasses)
  (nconc (mapcan #'all-slots superclasses) (mapcar #'first slots)))

;; Define binary class

(defmacro define-generic-binary-class (name (&rest superclasses) slots read-method)
  (with-gensyms (objectvar streamvar)
    `(progn
       (eval-when (:compile-toplevel :load-toplevel :execute)
         (setf (get ',name 'slots) ',(mapcar #'first slots))
         (setf (get ',name 'superclasses) ',superclasses))

       (defclass ,name ,superclasses
         ,(mapcar #'slot->defclass-slot slots))

       ,read-method

       (defmethod write-object progn ((,objectvar ,name) ,streamvar)
                  (declare (ignorable ,streamvar))
                  (with-slots ,(new-class-all-slots slots superclasses) ,objectvar
                    ,@(mapcar #'(lambda (x) (slot->write-value x streamvar)) slots))))))

(defmacro define-binary-class (name (&rest superclasses) slots)
  (with-gensyms (objectvar streamvar)
    `(define-generic-binary-class ,name ,superclasses ,slots
                                  (defmethod read-object progn ((,objectvar ,name) ,streamvar)
                                             (declare (ignorable ,streamvar))
                                             (with-slots ,(new-class-all-slots slots superclasses) ,objectvar
                                               ,@(mapcar #'(lambda (x) (slot->read-value x streamvar)) slots))))))

(defun slot->binding (spec stream)
  (destructuring-bind (name (type &rest args)) (normalize-slot-spec spec)
    `(,name (read-value ',type ,stream ,@args))))

(defun slot->keyword-arg (spec)
  (let ((name (first spec)))
    `(,(as-keyword name) ,name)))

(defmacro define-tagged-binary-class (name (&rest superclasses) slots &rest options)
  (with-gensyms (typevar objectvar streamvar)
    `(define-generic-binary-class ,name ,superclasses ,slots
                                  (defmethod read-value ((,typevar (eql ',name)) ,streamvar &key)
                                    (let* ,(mapcar #'(lambda (x) (slot->binding x streamvar)) slots)
                                      (let ((,objectvar
                                             (make-instance
                                              ,@(or (cdr (assoc :dispath options))
                                                    (error "Must supply :dispatch form."))
                                              ,@(mapcan #'slot->keyword-arg slots))))
                                        (read-object ,objectvar ,streamvar)
                                        ,objectvar))))))

;; Define binary type

(defmacro define-binary-type (name (&rest args) &body spec)
  (ecase (length spec)
    (1
     (with-gensyms (type stream value)
       (destructuring-bind (derived-from &rest derived-args) (mklist (first spec))
         `(progn
            (defmethod read-value ((,type (eql ',name)) ,stream &key ,@args)
              (read-value ',derived-from ,stream ,@derived-args))
            (defmethod write-value ((,type (eql ',name)) ,stream ,value &key ,@args)
              (write-value ',derived-from ,stream ,value ,@derived-args))))))
    (2
     (with-gensyms (type)
       `(progn
          ,(destructuring-bind ((in) &body body) (rest (assoc :reader spec))
                               `(defmethod read-value ((,type (eql ',name)) ,in &key ,@args)
                                  ,@body))
          ,(destructuring-bind ((out value) &body body) (rest (assoc :writer spec))
                               `(defmethod write-value ((,type (eql ',name)) ,out ,value &key ,@args)
                                  ,@body)))))))

;; Other useful functions

(defun current-binary-object () (first *in-progress-objects*))

(defun parent-of-type (type)
  (find-if #'(lambda (x) (typep x type)) *in-progress-objects*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Utilities in On Lisp chapter 4.

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

;; On Lisp Chapter 5

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

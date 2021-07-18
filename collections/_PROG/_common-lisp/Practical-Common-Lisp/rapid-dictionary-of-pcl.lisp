;;; Chapter 2 REPL

;; (load FILE &KEY VERBOSE PRINT IF-DOES-NOT-EXIST EXTERNAL-FORMAT ECHO COMPILING OBSOLETE-ACTION EXTRA-FILE-TYPES)
;; Load from files
(load "/path/to/file")
;; Return: T

;; (compile-file ARG0 &KEY OUTPUT-FILE LISTING WARNINGS VERBOSE PRINT EXTERNAL-FORMAT)
;; Compile the lisp source codes and produce FASL files
(compile-file "/path/to/file")
;; Return: #P"/path/to/file"

;;; Chapter 3 SIMPLE DATABASE

;; (list &REST OBJECTS)
;; Construct a list with all args listed, function
(list 1 2 3 4)
;; Return: (1 2 3 4)

;; (getf PROPLIST PROPNAME &OPTIONAL DEFAULT)
;; takes a plist and a symbol and returns the value in the plist following the symbol
(getf (list :a 1 :b :c 3) :a)
;; Return: 1

;; (defvar &WHOLE WHOLE-FORM SYMBOL &OPTIONAL (INITIAL-VALUE NIL SVAR) DOCSTRING)
;; Define global variables, macro
(defvar *db* nil)
;; Return: *DB*

;; (force-output &OPTIONAL ARG0)
;; ensure that Lisp doesn’t wait for a newline before it prints the prompt
(force-output *query-io*)
;; Return: NIL

;; (read-line &OPTIONAL ARG0 ARG1 ARG2 ARG3)
;; read a single line of text,function
(read-line *query-io*)
;; Return: NIL

;; (parse-integer ARG0 &KEY START END RADIX JUNK-ALLOWED) [2 times]
;; Parse an integer out of a string,function.
(parse-integer "123456" :junk-allowed t)
;; Return: 123456
;; Return: 6

;; (y-or-n-p &OPTIONAL ARG0 &REST OTHER-ARGS)
;; Reprompt the user if the input doesn't start with y,Y,n or N,function.
(y-or-n-p "yes/no? ")

;; (print OBJECT &optional PRINTCHARFUN)
;; Prints Lisp objects in a form that can be read back in by the Lisp reader
(print *db* out)

;; (evenp INTEGER)
;; Return T if the argument is even number.
(evenp 2)
;; Return: T

;;; Chapter 4 SYNTAX & SEMANTICS

;; quote
;; Takes a single expression as its “argument” and simply returns it,special operator
(quote (+ 1 2))
;; Return: (+ 1 2)

;; (eq ARG0 ARG1)
;; Two objects are EQ if they’re identical. The object identity of numbers and characters depends on how those data types are implemented in a particular Lisp.

;; (eql ARG0 ARG1)
;; Behave like EQ except that it also is guaranteed to consider two objects of the same class representing the same numeric or character value to be equivalent.
(eql 1 1.0)
;; Return: NIL
(eql "c" "c")
;; Return: NIL

;; (equal ARG0 ARG1)
;; Loosens the discrimination of EQL to consider lists equivalent if they have the same structure and contents, recursively, according to EQUAL . EQUAL also considers strings equivalent if they contain the same characters.
(equal "c" "c")
;; Return: T

;; (equalp ARG0 ARG1)
;; Behave like EQUAL but ignore differences in case.
(equal "c" "C")
;; Return: t

;;; Chapter 5 FUNCTIONS

;; (defun NAME ARGLIST &optional DOCSTRING DECL &rest BODY)
;; Define a function
(defun hello-world (x) (format t "~a ,hello world!" x))
;; Return: HELLO-WORLD

;; (documentation X DOC-TYPE)
;; Get the documentation string of the object,function
(documentation 'foo 'function)
;; Return the DOCSTRING

;; return-from
;; Return from everywhere the specail operator is.

;; (funcall FUNCTION &REST ARGUMENTS)
;; Use when you know the number of arguments you’re going to pass to the function at the time you write the code. The first argument to FUNCALL is the function object to be invoked, and the rest of the arguments are passed onto that function,special operator.
(funcall 'list 1 2 3)
;; Return the result of FUNCTION,in the case above,(1 2 3)

;; (apply FUNCTION &rest ARGUMENTS)
;; (apply #'func func-args)==(func (first func-args) (second func-args) (third func-args) (fourth func-args........)),that is ,apply recieves a list as the lambda list of FUNCTION.
(apply #'list (list 1 2 3))
(apply #'append (list (list 1 2) (list 3)))
;; Return: (1 2 3)

;; (exp ARG0)
;; Return e^ARG0
(exp 1)
;; Return: 2.7182817

;; (lambda &WHOLE WHOLE-FORM LAMBDALIST &BODY BODY) [2 times]
(lambda (x) (* x 2))
;; Return: #<FUNCTION :LAMBDA (X) (* X 2)>

;;; Chapter 6 VARIABLES

;; (LET ...) and (LET* ...) called BINDING FORMS ,and there are more binding forms in CL,etc. function definition.

;; (let VARLIST &body BODY)
;; Introduce new variables in a binding form,special operator.
(let ((a 10) (b 20) c)
  (setf c 30)
  (+ a b c))
;; Return the last form in BODY,that is, 60.

;; (let * VARLIST &body BODY)
;; Behave like LET but you can binxding a variable with variable appears earlier in VARLIST.
(let* ((a 10) (b (* 2 a)) (c (+ b 10)))
  (+ a b c))
;; Return the last form in BODY,that is, 60.
(let ((a 10) (b (* 2 a)) (c (+ b 10)))
  (+ a b c))
;; ERROR!

;; (defparameter VAR VAL &OPTIONAL (DOC NIL DOCP))
;; Define a global variable.
(defparameter *var* 100 "An useless variable.")
;; Return: *VAR*

;; (defvar VAR VAL &OPTIONAL (DOC NIL DOCP))
;; Define a global variable.
(defvar *var~* 100 "Another useless variable.")
;; Return: *VAR*

;; (defconstant NAME VALUE &OPTIONAL DOCUMENTATION)
;; Define a constant.
(defconstant +const+ 100 "An Useless constant")
;; Return: +CONST+

;; (setf &REST ARGS $ENVIRONMENT ENV)
;; another form explaination: setf: (PLACE VAL PLAVE VAL ...)
;; Assign any place a value,macro.
(setf *var* 200)
;; Return: 200

;; (aref ARRAY IDX)
;; Access ARRAYs,function

;; (gethash KEY HASHTABLE &optional DEFAULT)
;; Access hashtables.

;; (incf PLACE &OPTIONAL (DELTA 1) &ENVIRONMENT ENV)
;; Increase PLACE by DELTA (default,1),macro based on SETF
(incf *var*)
;; Return: 201
(incf *var* 3)
;; Return: 204

;; (decf PLACE &OPTIONAL (DELTA 1) &ENVIRONMENT ENV)
;; Decrease PLACE by DELTA (defualt,1),macro based on SETF

;; (random LIMIT &optional *RANDOM-STATE*)
(random 100)

;; (rotatef &REST ARGS &ENVIRONMENT ENV)
;; ↓←←←↑
;; ↓ooooo↑
;; ↓→→→↑
CL-USER> (defparameter count1 1)
COUNT1
CL-USER> (defparameter count2 2)
COUNT2
CL-USER> (defparameter count3 3)
COUNT3
CL-USER> (rotatef count1 count2 count3)
NIL
CL-USER> (eval count1)
2
CL-USER> (eval count2)
3
CL-USER> (eval count3)
1
;; Return: NIL

;; (shiftf PLACE ... VAL)
;; PLACE←←←
;; ↓
;; Return

;;; Chapter 7 MACRO 1

;; 1.Conditional Constructs

;; (if TEST THEN &OPTIONAL ELSE)
;; If TEST don't return NIL,execute THEN,otherwise execute ELSE,if exists,special operator.
;; THEN and ELSE must behave as exactly one form.
(if (= 2 3) "An useless string" "An useful string")
;; Return : "An usefull string"

;; (progn &REST FORMS)
;; Executes any number of forms in order and returns the value of the last form.
;; Normally work with IF.
(if (< 2 3)
    (progn
      (format t "Two little black birds sitting on a hill.")
      (format t "One named Jack, the other named Hélodie Jaqueline.")))
;; Print: Two little black birds sitting on a hill.One named Jack, the other named Hélodie Jaqueline.
;; Return: NIL
(if (< 2 3)
    (let ((x "Alexander"))
      (format t "Two little black birds sitting on a hill.")
      (format t "One named Jack, the other named Hélodie ~d Jaqueline." x)
      (eval x)
      (+ 2 3)))
;; Print: Two little black birds sitting on a hill.One named Jack, the other named Hélodie Alexander Jaqueline.
;; Return: 5
(if T (defparameter *test-if* 3) (defparameter *test-if* 2))
;; Return: *TEST-IF*
(eval *test-if*)
;; Return: 3

;; (when TEST &BODY FORMS)
;; If TEST don't return NIL,execute FORMS,macro
(when (< 2 3)
  (format t "Two little black birds sitting on a hill.")
  (+ 2 3)
  (+ 3 4))
;; Print: Two little black birds sitting on a hill.
;; Return: 7

;; (unless TEST &BODY FORMS)
;; If TEST return NIL,execute FORMS,macro
(unless (< 2 3)
  (format t "Two little black birds sitting on a hill.")
  (+ 2 3)
  (+ 3 4))
;; Return: NIL

;; (cond
;;   (test-1 form*)
;;   ...
;;   (test-n form*)
;; The conditions are evaluated in the order the branches appear in the body until one of them evaluates to true. At that point, the remaining forms in that branch are evaluated, and the value of the last form in the branch is returned as the value of the COND as a whole. If the branch contains no forms after the condition, the value of the condition is returned instead.
(cond
  ((= 1 2) "Impossible.")
  ((= 1 2) (format t "Two little bir..") (list 2 3) (list 3 4)))
;; Print: Two little bir..
;; Return: (3 4)

;; 2.Boolean Logic Operators

;; (not OBJECT)
;; Logical negation,function.
(not nil)
;; Return: T
(not (= 1 1))
;; Return: NIL

;; (and &REST FORMS)
;; Logical conjunction,macro.
(and (= 1 2) (= 3 3))
;; Return: NIL

;; (or &REST FORMS)
;; Logical disjunction,macro.
(or (= 1 2) (= 3 3))
;; Return: T

;; 3.Loooooooooooooooooooping


;; (dolist (VAR LISTFORM &OPTIONAL RESULTFORM) &BODY BODY)
;; Loops across the items of a list, executing the loop body with a variable holding the successive items of the list,macro.
(dolist (x '(1 2 3)) (print x) (if (evenp x) (return)))
;; Print: 1
;; Print: 2
;; Return: NIL

;; (dotimes (VAR COUNT &OPTIONAL (RESULT NIL)) &BODY BODY)
;; Loop for COUNT tims.COUNT must be a integer,macro.
(dotimes (x 3) (print x))
;; Print: 0
;; Print: 1
;; Print: 2
;; Return: NIL

;; (do
;;   ((VAR INIT [STEP]) ...)
;;   (END-TEST [RESULT...])
;;   BODY...)
;; Bind any number of variables,
;; complete control over how they change on each step through the loop by [STEP],
;; determines when to end the loop and can provide a form to evaluate at the end of the loop to generate a return value for the DO expression as a whole.
(do ((n 0 (1+ n))
     (cur 0 next)
     (next 1 (+ cur next)))
    ((= 10 n) cur)
  (print cur))
;; Compute fibonacci sequence.
;; Print: 0
;; Print: 1
;; Print: 1
;; Print: 2
;; Print: 3
;; Print: 5
;; Print: 8
;; Print: 13
;; Print: 21
;; Print: 34
;; Return!: 55

;; (loop  &ENVIRONMENT &REST KEYWORDS-AND-FORMS)
;; A mightly but lispization loop,The symbols across, and, below, collecting, counting, finally, for, from, summing, then, and to are some of the loop keywords whose presence identifies these as instances of the extended LOOP, macro.
(loop for i from 1 to 10 collecting i)
;; Return: (1 2 3 4 5 6 7 8 9 10)
(loop for x below 10 summing (expt x 2))
;; Return: 285
(loop for x across "the quick brown fox jumps over the lazy dog"
   counting (find x "aeiou"))
;; Return: 11
(loop for i below 10
   and a = 0 then b
   and b = 1 then (+ b a)
   finally (return a))
;; Return: 55, the 10th item of fibonacci sequence.

;; (expt BASE POWER)
;; Expornent arithmetic,function.
(expt 2 5)
;; Return: 32

;;; Chapter 8 MACRO 2

;; (defmacro NAME ARGLIST &OPTIONAL DOCSTRING DECL &REST BODY)
;; Define macros.
(defmacro once-only ((&rest names) &body body)
  (let ((gensyms (loop for n in names collect (gensym))))
    `(let (,@(loop for g in gensyms collect `(,g (gensym))))
       `(let (,,@(loop for g in gensyms for n in names collect ``(,,g ,,n)))
          ,(let (,@(loop for n in names for g in gensyms collect `(,n ,g)))
                ,@body)))))
;; Return: ONCE-ONLY

;; (gensym &OPTIONAL (THING G))
;; Returns a unique symbol each time it’s called. This is a symbol that has never been read by the Lisp reader and never will be because it isn’t interned in any package, function.
(gensym)
;; Return: #:G721, perhaps...

;; (macroexpand-1 FORM &OPTIONAL ENV)
;; Takes any Lisp expression as an argument and returns the result of doing one level of macro expansion,function.
(macroexpand-1 `(once-only 'a 'b))
;;Return :
(LET ((#:G730 (GENSYM)) (#:G731 (GENSYM)))
  `(LET ((,#:G730 ,QUOTE) (,#:G731 ,A))
     ,(LET ((QUOTE #:G730) (A #:G731))
           'B)))
T

;;; Chapter 9 UNIT TEST



;;; Chapter 10 NUMBERS & CHARACTERS &STRINGS

;; (+ &REST NUMBERS)
;; (- NUMBER &REST MORE-NUMBERS)
;; (* &REST NUMBERS)
;; (/ NUMBER &REST MORE-NUMBERS)
;; (1+ NUMBER)
;; (1- NUMBER)
;; (< NUMBER &REST MORE-NUMBERS)
;; (> NUMBER &REST MORE-NUMBERS)
;; (= NUMBER &REST MORE-NUMBERS)
;; (/= NUMBER &REST MORE-NUMBERS)
;; (<= NUMBER &REST MORE-NUMBERS)
;; (>= NUMBER &REST MORE-NUMBERS)
;; (min NUMBER &REST MORE-NUMBERS)
;; (max NUMBER &REST MORE-NUMBERS)
;; (zerop NUMBER)
;; (minusp NUMBER)
;; (plusp NUMBER)
;; (evenp NUMBER)
;; (oddp NUMBER)

;; (log NUMBER &OPTIONAL (BASE NIL BASE-P))
;; Logarithms.

;; (exp NUMBER)
;; (expt BASE POWER)
;; Exponentiation.

;; (sin NUMBER)
;; (cos NUMBER)
;; (tan NUMBER)
;; (asin NUMBER)
;; (acos NUMBER)
;; (atan NUMBER)
;; Basic trigonometric functions, and their inverses.

;; (sinh NUMBER)
;; (cosh NUMBER)
;; (tanh NUMBER)
;; (asinh NUMBER)
;; (acosh NUMBER)
;; (atanh NUMBER)
;; Hyperbolic functions and their inverses.

;; (floor NUMBER &OPTIONAL (DIVISOR 1))
;; Truncates toward negative infinity, returning the largest integer less than or equal to the argument.
(floor 1.6)
;; Return: 1
;; Return: 0.6
(floor 5.5 2)
;; Return: 2
;; Return: 1.5

;; (ceiling NUMBER &OPTIONAL (DIVISOR 1))
;; Truncates toward positive infinity, returning the smallest integer greater than or equal to the argument.
(ceiling 2.4)
;; Return: 3
;; Return: -0.5999999

;; (truncate NUMBER &OPTIONAL (DIVISOR 1))
;; Truncates toward zero, making it equivalent to FLOOR for positive arguments and to CEILING for negative arguments.

;; (ROUND NUMBER &OPTIONAL (DIVISOR 1))
;; Rounds to the nearest integer. If the argument is exactly halfway between two integers, it rounds to the nearest even integer.

;; (mod NUMBER DIVISOR)
;; Return the modulus.
(mod 10 -3)
-2

;; (rem NUMBER DIVISOR)
;; Return the remainder.
(rem 10 -3)
1

;;; Chapter 11 VECTOR & HASHTABLE

;; (vector $REST OBJECTS)
;; Make fixed-size vectors containing specific values, functions.
(vector 1 2)
;; Return: #(1 2)

;; (make-array DIMENSIONS &KEY (ELEMENT-TYPE T) (INITIAL-ELEMENT NIL INITIAL-ELEMENT-P) (INITIAL-CONTENTS NIL INITIAL-CONTENTS-P) ADJUSTABLE FILL-POINTER DISPLACED-TO DISPLACED-INDEX-OFFSET)
;; Create arrays of any dimensionality as well as both fixed-size and resizable vectors, functions.
(make-array 5 :fill-pointer 0)
;; Return: #()

;; (vector-push NEW-ELEMENT ARRAY)
;; Add an element to the end of a resizable vector, adds the element at the current value of the fill pointer and then increments the fill pointer by one, returning the index where the new element was added, funtions.
;; (vector-pop ARRAY)
;; Returns the most recently pushed item, decrementing the fill pointer in the process, functions.
;; (vector-push-extend NEW-ELEMENT ARRAY &OPTIONAL MIN-EXTENSION)
;; Works just like VECTOR-PUSH except it will automatically expand the array if you try to push an element onto a full vector—one whose fill pointer is equal to the size of the underlying storage, macro.

;; (length SEQUENCE)
;; Return the size of a sequence, function.

;; (elt SEQUENCE INDEX)
;; Takes a sequence and an integer index between zero (inclusive) and the length of the sequence (exclusive) and returns the corresponding element, functions.

;; Functions to count,search,remove and replace:
;; (count ITEM SEQUENCE &REST ARGS &KEY FROM-END (START 0) (END NIL) (KEY NIL) (TEST #'EQL TEST-P) (TEST-NOT NIL TEST-NOT-P))
;; Return: Number of times item appears in sequence
;; (find ITEM SEQUENCE &REST ARGS &KEY FROM-END (START 0) END KEY TEST TEST-NOT)
;; Return: Item or NIL.
;; (position ITEM SEQUENCE &REST ARGS &KEY FROM-END (START 0) END KEY TEST TEST-NOT)
;; Return: Index into sequence or NIL
;; (remove ITEM SEQUENCE &REST ARGS &KEY FROM-END (TEST #'EQL) (TEST-NOT NIL) (START 0) (END NIL) (COUNT NIL) (KEY NIL))
;; Return: Sequence with instances of item removed
;; (substitute NEW OLD SEQUENCE &REST ARGS &KEY FROM-END (TEST #'EQL) (TEST-NOT NIL) (START 0) (COUNT NIL) (END NIL) (KEY NIL))
;; Return: Sequence with instances of item replaced with new item
;; Arguments:
;; :test : pass a function that accepts two arguments and returns a boolean. If provided,it will be used to compare item to each element instead of the default object equality test, EQL
;; :key : pass a one-argument function to be called on each element of the sequence to extract a key value, which will then be compared to the item in the place of the element itself.
;; :start & :end : Limit the effects of these functions to a particular subsequence of the sequence argument.
;; :from-end : If is provided as a non-NIL, the elements of the sequence will be examined in reverse order.
;; :count : Used to specify how many elements to remove or substitute.

;; other functions:
;; (count-if PRED SEQUENCE &REST ARGS &KEY FROM-END (START 0) (END NIL) (KEY NIL))
;; (count-if-not PRED SEQUENCE &REST ARGS &KEY FROM-END (START 0) (END NIL) (KEY NIL))
;; (find-if PREDICATE SEQUENCE &REST ARGS &KEY FROM-END (START 0) END KEY)
;; (find-if-not PREDICATE SEQUENCE &REST ARGS &KEY FROM-END (START 0) END KEY)
;; (position-if PREDICATE SEQUENCE &REST ARGS &KEY FROM-END (START 0) END KEY)
;; (position-if-not PREDICATE SEQUENCE &REST ARGS &KEY FROM-END (START 0) END KEY)
;; (remove-if PREDICATE SEQUENCE &REST ARGS &KEY FROM-END (START 0) (END NIL) (COUNT NIL) (KEY NIL))
;; (remove-if-not PREDICATE SEQUENCE &REST ARGS &KEY FROM-END (START 0) (END NIL) (COUNT NIL) (KEY NIL))
;;(substitute-if NEW PREDICATE SEQUENCE &REST ARGS &KEY FROM-END (START 0) (END NIL) (COUNT NIL) (KEY NIL))
;; (substitute-if-not NEW PREDICATE SEQUENCE &REST ARGS &KEY FROM-END (START 0) (END NIL) (COUNT NIL) (KEY NIL))
;; In the place of the item argument, they all take a function to be called on each element of the sequence, that is PRED must be that function.

;; (remove-duplicates SEQUENCE &REST ARGS &KEY (TEST #'EQL) (TEST-NOT NIL) (START 0) (END NIL) FROM-END (KEY NIL))
;; Removes all but one instance of each duplicated element.

;; (copy-seq SEQUENCE)
;; (reverse SEQUENCE)
;; (concatenate OUTPUT-TYPE-SPEC &REST SEQUENCES)

;; (sort SEQUENCE PREDICATE &REST ARGS &KEY KEY)
;; (stable-sort SEQUENCE PREDICATE &REST ARGS &KEY KEY)

;; (merge SEQUENCE PREDICATE &REST ARGS &KEY KEY)

;; (fill SEQUENCE ITEM &KEY (START 0) END)
;; Set multiple elements of a sequence to a single value

;; (subseq SENQUENCE START &OPTIONAL END)
;; Extracts a subsequence starting at a particular index and continuing to a particular ending index or the end of the sequence.

;; (search SEQUENCE1 SEQUENCE2 &REST ARGS &KEY FROM-END (TEST #'EQL) (TEST-NOT NIL) (START1 0) (END1 NIL) (START2 0) (END2 NIL) (KEY NIL))
;; Works like POSITION except the first argument is a sequence rather than a single item.

;; (mismatch SEQUENCE1 SEQUENCE2 &REST ARGS &KEY FROM-END (TEST #'EQL) (TEST-NOT NIL) (START1 0) (END1 NIL) (START2 0) (END2 NIL) (KEY NIL))
;; Find where two sequences with a common prefix first diverge

;; (every PRED FIRSET-SEQ &REST MORE-SEQS)
;; (some PRED FIRST-SEQ &REST MORE-SEQS)
;; (notany PRED FIRST-SEQ &REST MORE-SEQS)
;; (notevery PRED FIRST-SEQ &REST MORE-SEQS)
;; Iterate over sequences testing a boolean predicate. The first argument to all these functions is the predicate, and the remaining arguments are sequences. The predicate should take as many arguments as the number of sequences passed. The elements of the sequences are passed to the predicate one element from each sequence—until one of the sequences runs out of elements or the overall termination test is met: EVERY terminates, returning false, as soon as the predicate fails. If the predicate is always satisfied, it returns true. SOME returns the first non- NIL value returned by the predicate or returns false if the predicate is never satisfied. NOTANY returns false as soon as the predicate is satisfied or true if it never is. And NOTEVERY returns true as soon as the predicate fails or false if the predicate is always satisfied. Here are some examples of testing just one sequence.

;; (map RESULT-TYPE FUNCTION FIRST-SEQUENCE &REST MORE-SEQUENCE)
;; Takes a n-argument function and n sequences, returns a new sequence containing the result of applying the function to subsequent elements of the sequences, function.
(map 'vector #'* #(1 2 3 4 5) #(10 9 8 7 6))
;; Return: #(10 18 24 28 30)

;; (map-into RESULT-SEQUENCE FUNCTION &REST SEQUENCE)
;; Places the results into a sequence passed as the first argument
(map-into #(1 1 1)  #'+ #(2 3 4) #(3 4 5 1))
;; Return: #(5 7 9)

;; (Reduce FUNCTION SEQUENCE &REST ARGS &KEY (KEY NIL) FROM-END (START 0) (END NIL) (INITIAL-VALUE NIL IVP))
;; Maps over a single sequence, applying a two-argument function first to the first two elements of the sequence and then to the value returned by the function and subsequent elements of the sequence.
(reduce #'+ #(1 2 3 4 5 6 7 8 9 10))
;; Return: 55

;; (make-hash-table &KEY (TEST 'EQL) (SIZE +MIN-HASH-TABLE-SIZE+) (REHASH-SIZE 1.5) (REHASH-THRESHOLD 1) (HASH-FUNCTION NIL) (WEAKNESS NIL) (SYNCHRONIZED)
;; Makes a hash table that considers two keys equivalent if they’re the same object according to EQL . This is a good default unless you want to use strings as keys, since two strings with the same contents aren’t necessarily EQL.MAKE-HASH-TABLE ’s :test can’t be used to specify an arbitrary function—only the values EQ , EQL , EQUAL , and EQUALP .

;; (gethash KEY HASH-TABLE &OPTIONAL DEFAUTL)
;; GETHASH function provides access to the elements of a hash table. It takes two arguments—a key and the hash table—and returns the value, if any, stored in the hash table under that key or NIL.

;; (remhash KEY HASH-TABLE)
;; Delete one item.

;; (clrhash HASH-TABLE)
;; Completely clear a hash table of all its key/value pairs

;; (maphash FUNCTION HASH-TABLE)
;; Takes a two-argument function and a hash table and invokes the function once for each key/value pair in the hash table.

;;; Chapter 12 LIST

(cons CAR CDR)

(car LIST)

(cdr LIST)

(rplaca CONS NEWCAR)

(rplacd CONS NEWCDR)

(first LIST)
(second LIST)
...
(tenth LIST)
(nth N LIST)

(cadr X)
(cdar X)
(caaar X)
...
(cdddr X)
(caaaar X)
...
(cddddr X)

(rest LIST)

(append &REST SENQUENCES)
;; Takes any number of list arguments and returns a new list containing the elements of all its arguments.
(append (list 1 2 3 4) '(4 5 6 7))
;; Return: (1 2 3 4 4 5 6 7)

;; Recycling Functions:
;; nsubstitute   : subsititute
(nsubstitute NEW OLD SEQUENCE &REST ARGS &KEY FROM-END (TEST #'EQL) (TEST-NOT NIL) (END NIL) (COUNT NIL) (KEY NIL) (START 0))
;; nreverse : reverse
(nreverse SEQUENCE)
;; nconc : append
(nconc &REST LISTS)
;; delete, delete-if, delete-if-not, delete-dupulicate : remove, remove-if, remove-if-not, remove-duplicate

;; List-manipulation functions:
(last LIST &OPTIONAL (N 1))
;; Returns the last cons cell in a list. With an integer, argument returns the last n cons cells.
(butlast LIST &OPTIONAL (N 1))
;; Returns a copy of the list, excluding the last cons cell. With an integer argument, excludes the last n cells.
(nbutlast LIST &OPTIANAL (N 1))
;; The recycling version of BUTLAST ; may modify and return the list but has no reliable side effects.
(ldiff LIST OBJECT)
;; Returns a copy of a list up to a given cons cell.
(tailp OBJECT LIST)
;; Returns true if a given object is a cons cell that’s part of the structure of a list.
(list* ARG &REST OTHERS)
;; Builds a list to hold all but the last of its arguments and then makes the last argument the CDR of the last cell in the list. In other words, a cross between LIST and APPEND .
(make-list SIZE &KEY INITIAL-ELEMENTS)
;; Builds an n item list. The initial elements of the list are NIL or the value specified with the :initial-element keyword argument.
(revappend X Y)
;; Combination of REVERSE and APPEND ; reverses first argument as with REVERSE and then appends the second argument.
(nreconc X Y)
;; Recycling version of REVAPPEND ; reverses first argument as if by NREVERSE and then appends the second argument. No reliable side effects.
(consp OBJECT)
;; Predicate to test whether an object is a cons cell.
(atom OBJECT)
;; Predicate to test whether an object is not a cons cell.
(listp OBEJCT)
;; Predicate to test whether an object is either a cons cell or NIL .
(null OBEJCT)
;; Predicate to test whether an object is NIL . Functionally equivalent to NOT but stylistically preferable when testing for an empty list as opposed to boolean false.

(mapcar FUNCTION LIST &REST MORE-LIST)
;; Its first argument is the function to apply, and subsequent arguments are the lists whose elements will provide the arguments to the function. the function is applied to successive elements of the list arguments, taking one element from each list per application of the function. The results of each function call are collected into a new list.
(maplist FUNCTION LIST &REST MORE-LIST)
;; Except instead of passing the elements of the list to the function,it passes the actual cons cells.
(mapcan FUNCTION LIST &REST MORE-LIST)
(mapcon FUNCTION LIST &REST MORE-LIST)
;; Work like MAPCAR and MAPLIST except for the way they build up their result. While MAPCAR and MAPLIST build a completely new list to hold the results of the function calls, MAPCAN and MAPCON build their result by splicing together the results—which must be lists—as if by NCONC .
(mapc FUNCTION LIST &REST MORE-LIST)
(mapl FUNCTION LIST &REST MORE-LIST)
;; Control constructs disguised as functions—they simply return their first list argument, so they’re useful only when the side effects of the mapped function do something interesting.

;;; Chapter 13 COMPLEX CONS CELLS:TREE,SETS...

;; Trees:

(copy-list LIST )
(copy-tree TREE &OPTIONAL VECP)
;; Generate a new list/tree.Note that, the two functions copy the cons cells that make up the list structure only.

(subst NEW OLD TREE &KEY KEY (TEST #'EQL TESTP) (TEST-NOT #'EQL NOTP))
;; Substitute all the items of a tree to a new one.
(subst 8 3 '(3 3 3 3 1 (2 3) (4 5 6 (5 4)) (3 2 1)))
;; Return: (8 8 8 8 1 (2 8) (4 5 6 (5 4)) (8 2 1))
(substitute 8 3 '(3 3 3 3 1 (2 3) (4 5 6 (5 4)) (3 2 1)) :from-end t :count 3)
;; Return: (3 8 8 8 1 (2 3) (4 5 6 (5 4)) (3 2 1)), just like processing a list.

(subst-if NEW TEST TREE &KEY KEY)
(subst-if-not NEW TEST TREE &KEY KEY)
(nsubst  NEW OLD TREE &KEY KEY (TEST #'EQL TESTP) (TEST-NOT #'EQL NOTP))
(nsubst-if  NEW TEST TREE &KEY KEY)
(nsubst-if-not  NEW TEST TREE &KEY KEY)

;; Sets:

(adjoin ITEM LIST &KEY KEY (TEST #'EQL TESTP) (TEST-NOT NIL NOTP))
;; To build up a set, you can use the function ADJOIN . ADJOIN takes an item and a list senting a set and returns a list representing the set containing the item and all the items in the original set.
(defparameter *set* ())
(setf *set* (adjoin 1 *set*))


(pushnew OBJ PLACE &REST KEYS &KEY KEY TEST TEST-NOT &ENVIRONMENT ENV)
;; A macro to change a tree.
(pushnew 2 *set*)
;; Return: (2 1)

(member ITEM LIST &KEY KEY (TEST NIL TESTP) (TEST-NOT NIL NOTP))
(member-if TEST LIST &KEY KEY)
(member-if-not TEST LIST &KEY KEY)
;; Just like FIND, FIND-IF, FIND-IF-NOT

(intersection LIST1 LIST2 &KEY KEY (TEST #'EQL TESTP) (TEST-NOT NIL NOTP))
;; Returns a list containing all the elements found in both arguments.
(union LIST1 LIST2 &KEY KEY (TEST #'EQL TESTP) (TEST-NOT NIL NOTP))
;; Returns a list containing one instance of each unique element from the two arguments. 3
(set-difference LIST1 LIST2 &KEY KEY (TEST #'EQL TESTP) (TEST-NOT NIL NOTP))
;; Returns a list containing all the elements from the first argument that don’t appear in the second argument.
(set-exclusive-or LIST1 LIST2 &KEY KEY (TEST #'EQL TESTP) (TEST-NOT #'EQL NOTP))
;; Returns a list containing those elements appearing in only one or the other of the two argument lists but not in both.
(subsetp LIST1 LIST2 &KEY KEY (TEST #'EQL TESTP) (TEST-NOT NIL NOTP))
;; Takes two lists and the usual :key and :test keyword arguments and returns true if the first list is a subset of the second

;; Lookup Tables,Alists and Plists.



(assoc ITEM ALIST &KEY KEY (TEST NIL TESTP) (TEST-NOT NIL NOTP))
;; The main lookup function for alists, takes a key and an alist and returns the FIRST cons cell whose CAR matches the key or NIL if no match is found.
(assoc-if PRED ALIST &KEY KEY)
(assoc-if-not PRED ALIST &KEY KEY)
(rassoc ITEM ALIST &KEY KEY (TEST NIL TESTP) (TEST-NOT NIL NOTP))
(rassoc-if PRED ALIST &KEY KEY)
(rassoc-if-not PRED ALIST &KEY KEY)
(copy-alist ALIST)

(pairlis  KEYS DATA &OPTIONAL (ALIST 'NIL))
;; Generate a alist with two lists.
(pairlis '(a b c d e) '(1 2 3 4 5))
;; Return: ((E . 5) (D . 4) (C . 3) (B . 2) (A . 1))

(acons KEY DATUM ALIST)
;; Add a key-value pair at the begin of a plist.
;; (cons (cons 'new-key 'new-value) alist) = (acons 'new-key 'new-value alist)

(get-properties PLACE INDICATOR-LIST)
;; Get key/value pairs from plist rapidly.

(remprop SYMBOL PROPNAME)
;; Remove a property in plist by symbol.
;; (remprop 'symbol 'key)≡(remf (symbol-plist 'symbol key))

(destructuring-bind LAMBDA-LIST EXPRESSION &BODY BODY)
(destructuring-bind (x (y1 &optional y2) z) (list 1 (list 2 20) 3) (list :x x :y1 y1 :y2 y2 :z z))
;; Return: (:X 1 :Y1 2 :Y2 20 :Z 3)
(destructuring-bind (&whole whole &key x y z) (list :z 1 :y 2 :x 3) (list :x x :y y :z z :whole whole))
;; Return: (:X 3 :Y 2 :Z 1 :WHOLE (:Z 1 :Y 2 :X 3))


;;; Chapter 14 FILE & I/O

(open FILENAME &KEY (DIRECTION INPUT) (ELEMENT-TYPE 'BASE-CHAR)
      (IF-EXISTS NIL IF-EXISTS-GIVEN)
      (IF-DOES-NOT-EXIST NIL IF-DOES-NOT-EXIST-GIVEN) (EXTERNAL-FORMAT DEFAULT) &AUX
      (DIRECTION DIRECTION) (IF-DOES-NOT-EXIST IF-DOES-NOT-EXIST)
      (IF-EXISTS IF-EXISTS))
;; Produce a stream from which you can read a file’s contents with the OPEN function.
;; To read the raw bytes, you need to pass OPEN an :element-type argument of '(unsigned-byte 8). 3 You can pass the resulting stream to the function READ-BYTE , which will return an integer between 0 and 255 each time it’s called.
(let ((in (open "/some/file/name.txt")))
  (format t "~a~%" (read-line in))
  (close in))

(read-line &OPTIONAL (STREAM *STANDARD-INPUT*) (EOF-ERROR-P T) EOF-VALUE RECURSIVE-P)
(read-char &OPTIONAL (STREAM *STANDARD-INPUT*) (EOF-ERROR-P T) EOF-VALUE RECURSIVE-P)
(read  &OPTIONAL (STREAM *STANDARD-INPUT*) (EOF-ERROR-P T) (EOF-VALUE NIL) (RECURSIVE-P NIL))
;; Read a s-expressions from a stream.
(read-byte STREAM &OPTIONAL (EOF-ERROR-P T) EOF-VALUE)
(write-char CHARACTER &OPTIONAL (STREAM *STANDARD-OUTPUT*))
(write-line STRING &OPTIONAL (STREAM *STANDARD-OUTPUT*) &KEY (START 0) END)
(write-string  STRING &OPTIONAL (STREAM *STANDARD-OUTPUT*) &KEY (START 0) END)
(terpri  &OPTIONAL (STREAM *STANDARD-OUTPUT*))
;; Short for “terminate print”—unconditionally a newline character.
(fresh-line  &OPTIONAL (STREAM *STANDARD-OUTPUT*))
;; Prints a newline character unless the stream is at the beginning of a line.
;; Output S-EXPRESSIONS:
(print OBJECT &OPTIONAL STREAM)
;; Prints an s-expression preceded by an end-of-line and followed by a space.
(prin1 OBJECT &OPTIONAL STREAM)
;; Prints just the s-expression.
(pprint OBJECT &OPTIONAL STREAM)
;; Prints s-expressions like PRINT and PRIN1 but using the “pretty printer,” which tries to print its output in an aesthetically pleasing way.
(princ OBJECT &OPTIONAL STREAM)
;; Prints Lisp objects, but in a way designed for human consumption. For instance, PRINC prints strings without quotation marks.
(write-sequence SEQ STREAM &KEY (STRAT 0) (END NIL))
;; Accepts both binary and character streams as long as all the elements of the sequence are of an appropriate type for the stream, either characters or bytes.
(read-sequence SEQ STREAM &KEY (START 0) END)
(close STREAM &KEY ABORT)
;; Close a file stream after reading it, function.

(with-open-file (STREAM FILESPEC &REST OPTIONS) &BODY BODY)
(with-open-file (stream "/path/to/file")
  (format t "~a~%" (read-line stream)))
;; Read a line from the file.
(with-open-file (stream "/path/to/file" :direction :output)
  (format stream "Some text"))
;; Write something to a file.

(pathname PATHSPEC)
;; Takes a pathname designator and returns an equivalent pathname object. When the designator is already a pathname, it’s simply returned.
(pathname "/path/to/file")
;; Return: #P"/path/to/file", #P indicates that is a pathname object.

(pathname-directory PATHNAME &KEY (CASE LOCAL))
(pathname-directory "/path/to/file")
;; Return: (:ABSOLUTE "path" "to")
(pathname-directory "path/to/file")
;; Return: (:RELATIVE "path" "to")
(pathname-name PATHNAME &KEY (CASE LOCAL))
(pathname-type PATHNAME &KEY (CASE LOCAL))
(pathname-host PATHNAME &KEY (CASE LOCAL))
(pathname-device PATHNAME &KEY (CASE LOCAL))
;; On Windows either PATHNAME-HOST or PATHNAME-DEVICE will return the drive letter.
(pathname-version PATHNAME)

(namestring PATHNAME)
;; The inverse function of PATHNAME, and it has a funcion family like PATHNAME outlined below:
(directory-namestring PATHNAME)
(file-namestring PATHNAME)

(make-pathname &KEY HOST (DEVICE NIL DEVP) (DIRECTORY NIL DIRP)
               (NAME NIL NAMEP) (TYPE NIL TYPEP) (VERSION NIL VERSIONP) DEFAULTS (CASE LOCAL))
;; Construct arbitrary pathnames
(make-pathname :device "c" :directory '(:absolute "foo" "bar") :name "baz")
;; Return in Linux amd64: #P"/foo/bar/baz"

(merge-pathnames PATHNAME &OPTIONAL (DEFAULTS *DEFAULT-PATHNAME-DEFAULTS*) (DEFAULT-VERSION NEWEST))
;; Takes two pathnames and merges them, filling in any NIL components in the first pathname with the corresponding value from the second pathname
(enough-namestring PATHNAME &OPTIONAL (DEFAULTS *DEFAULT-PATHNAME-DEFAULTS*))
;; The inverse function of MERGE-PATHNAMES
(merge-pathnames #p"foo/bar.html" #p"/www/html/")
;; Return: #p"/www/html/foo/bar.html"
(enough-pathnames #p"/www/html/foo/bar.html" #p"/www/html")
;; Return: #p"foo/bar.html"

;; Interacting with File System
(probe-file PATHSPEC)
;; Test whether a file exists in the file system corresponding to a pathname designator, a pathname, namestring, or file stream, function.
(directory PATHSPEC &KEY (RESOLVE-SYMLINKS T))
;; List all the files and directories in the path represented by designator PATHSPEC.
(delete-file FILE)
(rename-file FILE NEW-NAME)
(ensure-directories-exist PATHSPEC &KEY VERBOSE (MODE 511))
(with-open-file (out (ensure-directories-exist name) :direction :output)
  ...
  )
(file-write-date PATHSPEC)
(file-author PATHSPEC)
(file-length PATHSPEC)
(file-position STREAM &OPTIONAL POSITION)

;; Work with STRING-STREAM
(string-stream)
(make-string-input-stream STRING &OPTIONAL (START 0) END)
(make-string-output-stream &KEY (ELEMENT-TYPE 'CHARACTER) &AUX (BUFFER (MAKE-STRING *STRING-OUTPUT-STREAM-BUFFER-INITIAL-SIZE*)))
(get-output-stream-string STREAM)
(with-input-from-string  (VAR STRING &KEY INDEX START END) &BODY FORMS-DECLS)
(with-output-from-string (stream-symbol) &BODY)
(broadcast-stream)
(make-broadcast-stream &REST-STREAMS)
(concatented-stream)
(two-way-stream)
(echo-stream)
(make-two-way-stream INPUT-STREAM OUTPUT-STREAM)
(make-echo-stream INPUT-STREAM OUTPUT-STREAM)

;;; Chapter 15
(wild-pathname-p PATHNAME &OPTIONAL FIELD-KEY)
;; Test whether the passing PATHNAME have wild keywords, that is.

(butlast LIST &OPTIONAL (N 1))
(nbutlast LIST &OPTIONAL (N 1))
;; Returns a copy of list from which the last n conses have been omitted. If n is not supplied, its value is 1. If there are fewer than n conses in list, nil is returned and, in the case of nbutlast, list is not modified.

(constantly VALUE)
;; Returns a function that accepts any number of arguments, that has no side-effects, and that always returns value.
(mapcar (constantly 3) '(a b c d))
;; Return: (3 3 3 3)

;;; Chapter 16 OO: FUNCTIONS

;;; Chapter 17 OO: CLASSES

;;; Chapter 18 FORMAT !!

;;; Chapter 19 CONDITIONS & RESTARTS

;;; Chapter 20 SPECIAL OPERATORS
(unwind-protect PROTECTED &BODY CLEANUP)
;;; Chapter 21 PACKAGES & SYMBOLS

;;; Chapter 22 LOOP !!

;;; Chapter 23 SPAM FILETER

(print-unreadable-object (OBJECT STREAM &KEY TYPE IDENTITY) &BODY BODY)
;; Outputs a printed representation of object on stream, beginning with ``#<'' and ending with ``>''. Everything output to stream by the body forms is enclosed in the the angle brackets. If type is true, the output from forms is preceded by a brief description of the object's type and a space character. If identity is true, the output from forms is followed by a space character and a representation of the object's identity, typically a storage address.
(defmethod print-object ((obj airplane) stream)
  (print-unreadable-object (obj stream :type t :identity t)
    (princ (tail-number obj) stream)))
(prin1-to-string my-airplane)
=>  "#<Airplane NW0773 36000123135>"
OR=>  "#<FAA:AIRPLANE NW0773 17>"

(float NUMBER &OPTIONAL (OTHER NIL OTHER-P))
;; Converts a real number to a float. If a prototype (OTHER) is supplied, a float is returned that is mathematically equal to number but has the same format as prototype.
(eql (float 1.0 1.0d0) 1.0d0)
=> T

(aref ARRAY &REST SUBSCRIPTS)
;; Accesses the array element specified by the subscripts. If no subscripts are supplied and array is zero rank, aref accesses the sole element of array.
(aref (setq beta (make-array '(2 4)
                             :element-type '(unsigned-byte 2)
                             :initial-contents '((0 1 2 3) (3 2 1 0))))
      0 2)
=> 2
;; The third element of the first row, (0 1 2 3).

(assert TEST-FORM &OPTIONAL PLACES DATUM &REST ARGUMENTS &ENVIRONMENT ENV)
;; Assures that test-form evaluates to true. If test-form evaluates to false, assert signals a correctable error (denoted by datum and arguments). Continuing from this error using the continue restart makes it possible for the user to alter the values of the places before assert evaluates test-form again. If the value of test-form is non-nil, assert returns nil.


;;; Chapter 24 PARSING BINARY FILES
(ldb)
(dpb)
(code-char)
(char-code)
(intern)
(string X)
;; Returns a string described by x.
(string "already a string") =>  "already a string"
(string 'elm) =>  "ELM"
(string #\c) =>  "c"

;;; Chapter 25 ID3 PARSER4

;;; Chapter 26 WEB WITH ALLEGROSERVE

;;; Chapter 27 MP3 DATABASE

;;; Chapter 28 SHOUTCAST SERVER

;;; Chapter 29 MP3 BROWSER

;;; Chapter 30 HTML GENERATION LIB:INTERPRETER

;;; Chapter 31 HTML GENERATIOn LIB:COMPILER

;;; Chapter 32 WHAT"S NEXT

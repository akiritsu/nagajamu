;;;; A simple unit test

(defvar *current-test-name* nil)


(defmacro with-gensyms ((&rest names) &body body)
  `(let ,(loop for n in names collect `(,n (gensym)))
     ,@body))

;;; No repeat,until Chapter 9.6 - by aki
(defmacro deftest (name parameters &body body)
  "Define a test function.Within a test function we can call other test functions or use 'check' to run individual test cases."
  `(defun ,name ,parameters
     (let ((*current-test-name* (append *current-test-name* (list ',name))))
       ,@body)))

;;; ', just dequote for one time.Otherwise nobody would kown who is "form" in the function correctly.
(defmacro check (&body forms)
  "Run each expression in 'forms' as a test case."
  `(combine-results
     ,@(loop for f in forms collect `(report-result ,f ',f))))

(defmacro combine-results (&body forms)
  "Combine the results (as booleans) of evaluating 'forms' in order."
  (with-gensyms (result)
    `(let ((,result t))
       ,@(loop for f in forms collect `(unless ,f (setf ,result nil)))
       ,result)))

(defun report-result (result form)
  "Report the results of a single test case. Called by 'check'"
  (format t "~:[FAIL~;pass~] ... ~a: ~a~%" result *current-test-name* form)
  result)

;;; test deftest
(deftest test-plus ()
  (check
    (= (+ 1 1) 2)
    (= (+ 2 2) 3)))

(deftest test-muiltply ()
  (check
    (= (* 3 3) 9)
    (= (* 8 2) 23)))

(deftest test-all ()
  (combine-results
    (test-plus)
    (test-muiltply)))

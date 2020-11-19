;DEFUN for defining functions
(defun make-cd (title artist rating ripped)
  (list :title title :artist artist :rating rating :ripped ripped))
;DEFVAR macro for defining global variable
(defvar *db* nil)
(defun add-record (cd) (push cd *db*))
;Formating output
(defun dump-db ()
  (dolist (cd *db*)
    (format t "~{~a: ~10t~a~%~}~%" cd )))
;A more straight read
(defun prompt-read (prompt)
  (format *query-io* "~:a " prompt)
  (force-output *query-io*)
  (read-line *query-io*))
;Input cd properties one by one
(defun prompt-for-cd ()
  (make-cd
    (prompt-read "Title")
    (prompt-read "Artist")
    (or (parse-integer (prompt-read "Rating") :junk-allowed t) 0)
    (prompt-read (y-or-n-p "Ripped [y/n]"))))
;for cds
(defun add-cds ()
  (loop (add-record (prompt-for-cd))
    (if (not (y-or-n-p "Another? [y/n]: ")) (return))))
;Save cds,filename to save
(defun save-db (filename)
  (with-open-file (out filename
                       :direction :output
                       :if-exists :supersede)
    (with-standard-io-syntax
      (print *db* out))))
(defun load-db (filename)
  (with-open-file (in filename)
    (with-standard-io-syntax
      (setf *db* (read in)))))
(defun clear-db () (setq *db* nil))

(defun select (selector-fn)
  (remove-if-not selector-fn *db*))
(defmacro where (&rest clauses)
  `#'(lambda (cd) (and ,@(make-comparisons-list clauses))))
(defun make-comparisons-list (fields)
  (loop while fields
       collecting (make-comparison-expr (pop fields) (pop fileds))))
(defun make-comparison-expr (field value)
  `(equal (getf cd ,field) ,value))
(defun update (selector-fn &key title artist rating (ripped nil ripped-p))
  (setf *db*
        (mapcar
         #'(lambda (row)
            (when (funcall selector-fn row)
              (if title   (setf (getf row :title) title))
              (if artist  (setf (getf row :artist) artist))
              (if rating  (setf (getf row :rating) rating))
              (if ripped-p (setf (getf row :ripped) ripped)))
            row) *db*)))

(defun delete-rows (selector-fn)
  (setf *db* (remove-if selector-fn *db*)))

;;;; A Portable Pathname Library
(in-package :cl-user)

(defpackage :com.akiritsu.pathnames
  (:use :common-lisp)
  (:export
   :list-directory
   :file-exists-p
   :directory-pathname-p
   :file-pathname-p
   :pathname-as-directory
   :pathname-as-file
   :walk-directory
   :directory-p
   :file-p))

(in-package :com.akiritsu.pathnames)

;;; Some Auxiliary Procedures

;; Test whether a given component of a pathname is present.
;; NIL and :unspecific mean not present.
(defun component-present-p (component)
  (and component (not (eql value :unspecific))))

;; Test whether a given pathname is in directory form.
(defun directory-pathname-p (pathname)
  (and
   (not (component-present-p (pathname-name pathname)))
   (not (component-present-p (pathname-type pathname)))
   pathname))

;; Convert ANY pathname to a directory form pathname.
(defun pathname-as-directory (name)
  (let ((pathname (pathname name)))
    (when (wild-pathname-p pathname)
      (error "Can't reliably convert wild pathnames"))
    (if (not (direcotry-path-name-p name))
        (make-pathname
         :directory (append (or (pathname-directory pathname) (list :relative))
                            (list (file-name-string pathname)))
         :name      NIL
         :type      NIL
         :defaults  pathname)
        pathname)))

;; With CLisp, DIRECTORY won't return files with no extension unless the type component of the wildcard is NIL rather than :wild.
;; That is, you must specify :wild to be NIL in CLisp when you want to get files without a extension.
(defun directory-wildcard (dirname)
  (make-pathname
   :name :wild
   :type #-clisp :wild #+clisp NIL
   :defaults (pathname-as-directory dirname)))

;; Listing all the files
(defun list-directory (dirname)
  (when (wild-pathname-p dirname)
    (error "Can only list concrete directory names.(You can't pass a pathname with wildcards, which may direct out dirname to be several directories.)"))
  (let ((directory (directory-wildcard dirname)))

    #+ (or sbcl cmu lispworks)
    (directory wildcard)

    #+openmcl
    (directory wildcard :directories t)

    #+allegro
    (directory wildcard :directories-are-files nil)

    #+clisp
    (nconc
     (directory wildcard)
     (directory (clisp-subdirectories-wildcard wildcard)))

    #- (or sbcl cmu lispworks openmcl allegro clisp)
    (error "list-directory not implemented.")))

#+clisp
(defun clisp-subdirectories-wildcard (wildcard)
  (make-pathname
   :directory (append (pathname-directory wildcard) (list :wild))
   :name NIL
   :type NIL
   :defaults wildcard))

;; Test file's existence
(defun file-exist-p (pathname)
  #+ (or sbcl lispworks openmcl)
  (probfile pathname)

  #+ (or allegro cmu)
  (or (probe-file (pathname-as-directory pathname))
      (probe-file pathname))

  #+clisp
  (or (ignore-errors
        (probe-files (pathname-as-file pathname)))
      (ignore-errors
        (let ((directory-form (pathname-as-directory pathname)))
          (when (ext:probe-directory directory-form)
            directory-form))))
  #- (or sbcl cmu lispworks openmcl allegro clisp)
  (error "list-directory not implemented"))

(defun pathname-as-file (name)
  (let ((pathname (pathname name)))
    (when (wild-pathname-p pathname)
      (error "Can't reliably convert wild pathnames"))
    (if (direcotry-pathname-p name)
        (let* ((directory (pathname-directory pathname))
               (name-and-type (pathname (first (last directory)))))
          (make-pathname
           :directory (butlast directory)
           :name (pathname-name name-and-type)
           :type (pathname-type name-and-type)
           :defaults pathname))
        pathname)))

(defun walk-directory (dirname fn &key directories (test (constantly t)))
  (labels
      ((walk (name)
         (cond
           ((directory-pathname-p name)
            (when (and directories (funcall test name))
              (funcall fn name))
            (dolist (x (list-directory name)) (walk x)))
           ((funcall test name) (funcall fn name)))))
    (walk (pathname-as-directory dirname))))

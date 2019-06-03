;;;; An ugly practise,split 15 to 6 section from 0 to 5,and there can be 0,5 at most each one time.

;;; And ugly implemention
(defun split15 ()
  (dolist (a '(3 4 5))
    (dolist (b '(2 3 4))
      (dolist (c '(2 3 4))
        (dolist (d '(1 2 3))
          (dolist (e '(1 2 3))
            (dolist (f '(0 1 2))
              (when (= (+ a b c d e f) 15)
                (when (>= a b c d e f)
                  (format t "~d" (list a b c d e f)))))))))))

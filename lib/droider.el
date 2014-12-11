(defun droider-current-classpath (pwd)
  (setq path-classpath (format "%s.classpath" pwd))
  (cond
   ((not pwd) nil)
   ((string-equal pwd "/") nil)
   ((file-exists-p path-classpath) path-classpath)
   (t (droider-current-classpath (file-name-directory (directory-file-name pwd))))))

(defun droider-current-classpath-test ()
  (interactive)
  (setq pwd (shell-command-to-string "echo -n `pwd`"))
  (message (droider-current-classpath pwd)))

(defun droider-thing-at-point-test ()
  (interactive)
  (setq str "")
  (setq l 0)
  (while (not (string-equal str " "))
    (setq str (buffer-substring (+ (point) l) (+ (point) (+ l 1))))
    (setq l (+ l 1)))
  (message (buffer-substring (point) (+ (point) l))))

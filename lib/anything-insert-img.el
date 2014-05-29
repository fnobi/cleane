(defun anything-c-sources-current-project-img ()
  (setq pwd (shell-command-to-string "echo -n `pwd`"))
  (setq root (shell-command-to-string "git rev-parse --show-cdup"))
  (setq root (replace-regexp-in-string "\n$" "" root))
  (setq images (split-string (shell-command-to-string (format "ls %simg" root))))
  '((name . "img")
    (candidates . images)
    (type . file)
    (action . (lambda (entry) (shell-command (format "open %s/img/%s" root entry))))))

(defun anything-insert-img ()
  (interactive)
  (anything 
   :sources (list (anything-c-sources-current-project-img))
   :default ""
   :prompt "Insert Img: "))

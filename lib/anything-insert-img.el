(defun current-project-images ()
  (setq pwd (shell-command-to-string "echo -n `pwd`"))
  (setq root (shell-command-to-string "git rev-parse --show-cdup"))
  (setq root (replace-regexp-in-string "\n$" "" root))
  (split-string (shell-command-to-string (format "ls %simg" root))))

(defun anything-c-sources-current-project-img ()
  (setq format-img-tag "<img src=\"<%%= img_path %%>/img/%s\" alt=\"\"/>")
  (setq format-css-img "image-url('%s')")
  (setq images (current-project-images))
  '((name . "img")
    (candidates . images)
    (type . file)
    (action . (lambda (entry)
                (cond 
                 ((eq major-mode 'css-mode)
                    (insert (format format-css-img entry)))
                 ((eq major-mode 'html-mode)
                  (insert (format format-img-tag entry)))
                 (t (insert entry)))))))

(defun anything-insert-img ()
  (interactive)
  (anything 
   :sources (list (anything-c-sources-current-project-img))
   :default ""
   :prompt "Insert Img: "))

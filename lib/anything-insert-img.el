(defun image-dir (pwd)
  (setq path-img (format "%s/img" pwd))
  (setq path-images (format "%s/images" pwd))
  (setq path-static (format "%s/static/img" pwd))
  (cond
   ((not pwd) nil)
   ((file-exists-p path-img) path-img)
   ((file-exists-p path-images) path-images)
   ((file-exists-p path-static) path-static)
   (t (image-dir (file-name-directory (directory-file-name pwd))))))

(defun current-project-images ()
  (setq pwd (shell-command-to-string "echo -n `pwd`"))
  (setq target (image-dir pwd))
  (if target
      (split-string (shell-command-to-string (format "ls %s" target)))
    nil))

(defun image-dimention (img-name)
  (setq pwd (shell-command-to-string "echo -n `pwd`"))
  (setq img-path (format "%s/%s" (image-dir pwd) img-name))
  (setq cmd (format "identify %s | cut -d ' ' -f 3" img-path))
  (setq res (shell-command-to-string cmd))
  (setq res (car (last (split-string res))))
  (split-string res "x"))

(defun anything-c-sources-current-project-img ()
  (setq format-img-tag "<img src=\"<%%= img_path %%>/%s\" width=\"%s\" height=\"%s\" alt=\"\"/>")
  (setq format-css-img "image-url('%s');\nwidth: %spx;\nheight: %spx;")
  (setq images (current-project-images))
  '((name . "img")
    (candidates . images)
    (type . file)
    (action . (lambda (entry)
                (setq dimen (image-dimention entry))
                (setq width (nth 0 dimen))
                (setq height (nth 1 dimen))
                (cond 
                 ((eq major-mode 'css-mode)
                    (insert (format format-css-img entry width height)))
                 ((eq major-mode 'html-mode)
                  (insert (format format-img-tag entry width height)))
                 (t (insert entry)))))))

(defun anything-insert-img ()
  (interactive)
  (anything 
   :sources (list (anything-c-sources-current-project-img))
   :default ""
   :prompt "Insert Img: "))

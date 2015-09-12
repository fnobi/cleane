(defun partial-dir (pwd)
  (interactive "DRoot Dir: ")
  (setq path-partial (format "%s/partial" pwd))
  (setq path-shared (format "%s/shared" pwd))
  (cond
   ((not pwd) nil)
   ((string= pwd "/") nil)
   ((file-exists-p path-partial) path-partial)
   ((file-exists-p path-shared) path-shared)
   (t (partial-dir (file-name-directory (directory-file-name pwd))))))

(defun current-project-partials ()
  (setq pwd (shell-command-to-string "echo -n `pwd`"))
  (setq target (partial-dir pwd))
  (if target
      (split-string (shell-command-to-string (format "ls %s" target)))
    nil))

(defun anything-c-sources-current-project-partials ()
  (setq format-jade "include %s")
  (setq format-erb "<%%= render :partial => '%s' %%>")
  (setq partials (current-project-partials))
  '((name . "partials")
    (candidates . partials)
    (type . file)
    (action . (lambda (entry)
                (cond 
                 ((eq major-mode 'jade-mode)
                    (insert (format format-jade entry)))
                 ((eq major-mode 'html-mode)
                    (insert (format format-erb entry)))
                 (t (insert entry)))))))

(defun anything-insert-require ()
  (interactive)
  (anything 
   :sources (list (anything-c-sources-current-project-partials))
   :default ""
   :prompt "Insert Partial: "))

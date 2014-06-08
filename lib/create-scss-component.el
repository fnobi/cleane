(defun create-scss-component (name)
  "あたらしいscssコンポーネントを作成・importします"
  (interactive "sName: ")

  (setq pwd (shell-command-to-string "echo -n `pwd`"))
  (setq components-dir-name "components")
  (setq sass-components-dir (format "%s/%s" pwd components-dir-name))
  (setq sass-file-path (format "%s/_%s.scss" sass-components-dir name))
  (setq content (format ".%s {\n}" name))

  (cond
   ((not (file-exists-p sass-components-dir)) (message "There is no components dir."))
   (t ((lambda ()
        (write-region content nil sass-file-path)
        (insert (format "@import \"components/%s\";" name))
        (save-buffer)
        (find-file sass-file-path))))))

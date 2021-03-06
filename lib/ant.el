(defun ant-dir (pwd)
  (interactive)
  (setq path-buildxml (format "%s/build.xml" pwd))
  (setq path-ant-dir (file-name-directory (directory-file-name path-buildxml)))
  (cond
   ((not pwd) nil)
   ((string-equal pwd "/") nil)
   ((file-exists-p path-buildxml) path-ant-dir)
   (t (ant-dir (file-name-directory (directory-file-name pwd))))))

(defun ant (task-name)
  (interactive "sTask Name: ")
  (if (eq (length task-name) 0) (setq task-name "debug"))
  (setq pwd (shell-command-to-string "echo -n `pwd`"))
  (setq path-ant-dir (ant-dir pwd))
  (setq buffer-name (format "*ant*:[%s]" pwd))
  (generate-new-buffer buffer-name)
  (pop-to-buffer buffer-name)
  (shell-cd path-ant-dir)
  (shell-command (format "ant %s" task-name) buffer-name nil)
  (goto-char (point-max)))

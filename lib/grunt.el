(defun grunt (task-name)
  (interactive "sTask Name: ")

  (setq buffer-name (format "*grunt*: %s" task-name))
  (setq result (shell-command-to-string (format "grunt %s" task-name)))

  (generate-new-buffer buffer-name)
  (switch-to-buffer buffer-name)
  (insert (ansi-color-apply result)))

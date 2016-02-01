(defun npm (task-name)
  (interactive "sTask Name: ")
  (eshell-command-on-shell (format "npm run %s" task-name)))

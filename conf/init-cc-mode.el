(defun my-c-c++-mode-init ()
  (setq c-basic-offset 4))

(add-hook 'c-mode-hook 'my-c-c++-mode-init)
(add-hook 'c++-mode-hook 'my-c-c++-mode-init)

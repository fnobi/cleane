(defun ndk-build ()
  (interactive)

  (setq buffer-name "*ndk-build*")
  (setq result (shell-command-to-string "ndk-build"))

  (generate-new-buffer buffer-name)
  (switch-to-buffer buffer-name)
  (insert (ansi-color-apply result)))

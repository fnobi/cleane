(defun clip-buffer ()
  "現在のbufferをclipboardにコピーします"
  (interactive)
  (setq tmpfile (expand-file-name "~/Desktop/.clip-buffer-tmp"))
  (write-region (buffer-string) nil tmpfile nil)
  (shell-command (concat "cat " tmpfile " | pbcopy"))
  (message "copied."))

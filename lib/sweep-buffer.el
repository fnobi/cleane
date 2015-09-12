(defun each-buffer (iterator &optional bufs)
  (setq bufs (if bufs bufs (buffer-list)))
  (funcall iterator (car bufs))
  (if (cdr bufs) (each-buffer iterator (cdr bufs))))

(defun sweep-buffer (&optional verbose)
  (interactive)
  (setq count 0)
  (if verbose
      (let () 
        (setq result-buffer-name (generate-new-buffer-name "*sweep-buffer*"))
        (generate-new-buffer result-buffer-name)
        (switch-to-buffer result-buffer-name)))
  (each-buffer '(lambda (buf)
                  (setq name (buffer-name buf))
                  (setq file-name (buffer-file-name buf))
                  (setq mode (format "%s" (buffer-local-value 'major-mode buf)))
                  (setq flag (or
                              file-name
                              (string= mode "dired-mode")
                              (string= mode "magit-diff-mode")
                              (string= mode "magit-rev-mode")
                              (string= mode "magit-process-mode")))
                  (if flag
                      (let ()
                        (setq count (+ count 1))
                        (if verbose
                            (insert (concat "[clear]\t" name "\n")))
                        (if flag (kill-buffer buf))))))
  (message (format "kill %d buffers" count)))

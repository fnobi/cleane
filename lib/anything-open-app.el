(defvar anything-c-source-applications-dir
  '((name . "Projects dir")
    (candidates . (lambda ()
                    (split-string (shell-command-to-string "mdfind kMDItemContentTypeTree==\"com.apple.application\"") "\n")))
    (type . file)
    (action . (lambda (entry) (shell-command (format "open '%s'" (expand-file-name entry)))))))

(defun anything-open-app ()
  "Open application."
  (interactive)
  (anything (list anything-c-source-applications-dir)
            ""
            "Open App: " nil))

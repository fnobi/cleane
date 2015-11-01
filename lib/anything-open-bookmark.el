(defvar anything-c-source-topsites-file
  '((name . "Top Sites")
    (candidates . (lambda ()
                    (setq sqlite-path (expand-file-name "~/Library/Application\\ Support/Google/Chrome/Default/Top\\ Sites"))
                    (setq sql "select url from thumbnails;")
                    (split-string (shell-command-to-string
                                   (format "echo \"%s\" | sqlite3 %s" sql sqlite-path)) "\n")))
    (type . file)
    (action . (lambda (entry) (shell-command (format "open '%s'" entry))))))

(defun anything-open-topsites ()
  "Open Top Sites."
  (interactive)
  (anything (list anything-c-source-topsites-file)
            ""
            "Open Topsites: " nil))

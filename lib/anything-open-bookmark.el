(defvar anything-c-source-bookmark-file
  '((name . "Bookmarks")
    (candidates . (lambda ()
                    (setq bookmark-file-path (expand-file-name "~/bookmark.txt"))
                    (split-string (shell-command-to-string
                                   (format "cat %s" bookmark-file-path)) "\n")))
    (type . file)
    (action . (lambda (entry) (shell-command (format "open '%s'" entry))))))

(defun anything-open-bookmark ()
  "Open bookmark."
  (interactive)
  (anything (list anything-c-source-bookmark-file)
            ""
            "Open Bookmark: " nil))

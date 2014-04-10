(require 'anything-config)

;; anything custom
(defvar anything-c-source-projects-dir
  '((name . "Projects dir")
    (candidates . (lambda () (directory-files "~/Projects/")))
    (type . file)
    (display-to-real . (lambda (name) (concat "~/Projects/" name)))
    (action . (lambda (entry) (dired entry)))))

(defun my-anything-find-file ()
  "My anything."
  (interactive)
  (anything (list anything-c-source-buffers
                  anything-c-source-files-in-current-dir
                  anything-c-source-file-name-history
                  anything-c-source-projects-dir)
            ""
            "Find File: " nil))

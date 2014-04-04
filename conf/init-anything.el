(require 'anything-config)
(add-to-list 'anything-sources 'anything-c-source-emacs-commands)

;; anything custom
(defvar anything-c-source-projects-dir
  '((name . "Projects dir")
    (candidates . (lambda () (directory-files "~/Projects/")))
    (type . file)
    (action . (lambda (entry) (dired (concat "~/Projects/" entry))))))

(defun my-anything-find-file ()
  "My anything."
  (interactive)
  (anything (list anything-c-source-buffers
                  anything-c-source-files-in-current-dir
                  anything-c-source-file-name-history
                  anything-c-source-projects-dir)
            ""
            "Find File: " nil))

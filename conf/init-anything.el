(require 'anything-config)

;; anything custom
(defvar anything-c-source-projects-dir
  '((name . "Projects dir")
    (candidates . (lambda () (directory-files "~/Projects/")))
    (type . file)
    (display-to-real . (lambda (name) (concat "~/Projects/" name)))
    (action . (lambda (entry) (dired entry)))))

(defvar anything-c-source-applications-dir
  '((name . "Projects dir")
    (candidates . (lambda ()
                    (directory-files "/Applications/" nil "\.app$")))
    (type . file)
    (display-to-real . (lambda (name) (concat "/Applications/" name)))
    (action . (lambda (entry) (shell-command (concat "open '" entry "'"))))))

(defun my-anything-find-file ()
  "My anything."
  (interactive)
  (anything (list anything-c-source-buffers
                  anything-c-source-files-in-current-dir
                  anything-c-source-file-name-history
                  anything-c-source-projects-dir)
            ""
            "Find File: " nil))

(defun my-anything-open-app ()
  "My anything."
  (interactive)
  (anything (list anything-c-source-applications-dir)
            ""
            "Open App: " nil))

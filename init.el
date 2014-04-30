;; set load paths
(setq load-path (append '(
    "~/.emacs.d/conf"
    "~/.emacs.d/lib"
) load-path))


;; definitions
(load "init-defaults")
(load "init-shell")

;; package initialize
(package-initialize)

;; packages config
(load "init-css-mode")
(load "init-js2-mode")
(load "init-auto-complete")
(load "init-emmet-mode")
(load "init-anything")
(load "init-ac-js2")
(load "init-go-mode")
(load "init-yasnippet")
(load "init-magit")

;; load libraries
(load "eshell-clean-and-open")
(load "my-make-scratch")
(load "sudden-death")
(load "ggl")
(load "anything-git-project")
(load "notification")
(load "clip-buffer")

;; set keybinds
(load "init-keybinds")

;; activate notification server
(require 'notification)

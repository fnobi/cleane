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

;; load libraries
(load "eshell-clean-and-open")
(load "my-make-scratch")

;; set keybinds
(load "init-keybinds")

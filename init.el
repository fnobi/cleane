;; set load paths
(setq load-path (append '(
    "~/.emacs.d/conf"
    "~/.emacs.d/lib"
) load-path))


;; definitions
(load "init-defaults")
(load "init-shell")


;; packages config
(package-initialize)
(load "init-css-mode")
(load "init-js2-mode")
(load "init-auto-complete")
(load "init-emmet-mode")
(load "init-anything")

;; load libraries
(load "eshell-clean-and-open")
(load "my-make-scratch")


;; set keybinds
(load "init-keybinds")

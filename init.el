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
(load "init-js2-mode")
(load "init-auto-complete")


;; load libraries
(load "eshell-clean-and-open")


;; set keybinds
(load "init-keybinds")

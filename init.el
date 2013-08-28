;; set load paths
(setq load-path (append '(
    "~/.emacs.d/conf"
    "~/.emacs.d/lib"
) load-path))


;; definitions
(load "init-shell")
(load "init-defaults")


;; load libraries
(load "eshell-clean-and-open")


;; set keybinds
(load "init-keybinds")

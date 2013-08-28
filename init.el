;; set load paths
(setq load-path (append '(
    "~/.emacs.d/conf"
    "~/.emacs.d/lib"
) load-path))

(package-initialize)

;; definitions
(load "init-defaults")
(load "init-shell")
(load "init-auto-complete")

;; load libraries
(load "eshell-clean-and-open")


;; set keybinds
(load "init-keybinds")

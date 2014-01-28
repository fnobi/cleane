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

;; load auto-java-complete
(load "auto-java-complete/ajc-java-complete")
(load "auto-java-complete/ajc-java-complete-config")

;; packages config
(load "init-css-mode")
(load "init-js2-mode")
(load "init-auto-complete")
(load "init-emmet-mode")
(load "init-anything")
(load "init-auto-java-complete")

;; load libraries
(load "eshell-clean-and-open")
(load "my-make-scratch")

;; set keybinds
(load "init-keybinds")

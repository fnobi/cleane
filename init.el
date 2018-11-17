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
(load "init-cc-mode")
(load "init-css-mode")
(load "init-js2-mode")
(load "init-jade-mode")
(load "init-typescript-mode")
(load "init-auto-complete")
(load "init-emmet-mode")
(load "init-anything")
(load "init-ac-js2")
(load "init-go-mode")
(load "init-swift-mode")
(load "init-yasnippet")
(load "init-magit")
(load "init-dsvn")
(load "init-web-mode")
(load "init-dired-open")
(load "init-cocoa")

;; load libraries
(load "eshell-clean-and-open")
(load "my-make-scratch")
(load "sudden-death")
(load "ggl")
(load "anything-git-project")
(load "anything-find-working-file")
(load "anything-insert-img")
(load "anything-insert-require")
(load "anything-open-app")
(load "anything-open-bookmark")
(load "clip-buffer")
(load "create-scss-component")
(load "grunt")
(load "write-rough")
(load "ant")
(load "ndk-build")
(load "sweep-buffer")
(load "call-terminal")
(load "call-finder")

;; set keybinds
(load "init-keybinds")

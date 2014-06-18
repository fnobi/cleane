(package-initialize)

;; init repository
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(list-packages)

;; install packages
(package-install 'js2-mode)
(package-install 'ack)
(package-install 'magit)
(package-install 'markdown-mode)
(package-install 'php-mode)
(package-install 'zencoding-mode)
(package-install 'coffee-mode)
(package-install 'emmet-mode)
(package-install 'helm)
(package-install 'auto-complete)
(package-install 'ac-js2)
(package-install 'dsvn)
(package-install 'anything)
(package-install 'yasnippet)
(package-install 'go-mode)
(package-install 'swift-mode)
(package-install 'csharp-mode)

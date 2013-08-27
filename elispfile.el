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

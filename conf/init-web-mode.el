;; web-mode
(require 'web-mode)

;; 拡張子の設定
(add-to-list 'auto-mode-alist '("\\.phtml$"     . web-mode))
(add-to-list 'auto-mode-alist '("\\.php$"       . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp$"       . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x$"   . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb$"       . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?$"     . web-mode))

;; インデント関係
(defun web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-html-offset   0)
  (setq web-mode-css-offset    0)
  (setq web-mode-script-offset 0)
  (setq web-mode-php-offset    0)
  (setq web-mode-java-offset   0)
  (setq web-mode-asp-offset    0)
  (setq indent-tabs-mode t)
  (setq tab-width 0)
  (sgml-electric-tag-pair-mode t))
(add-hook 'web-mode-hook 'web-mode-hook)

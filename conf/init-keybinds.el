;; basic keybinds
(define-key global-map (kbd "C-h") 'delete-backward-char)
(define-key global-map [?¥] [?\\])  ;; ¥の代わりにバックスラッシュを入力する

(define-key global-map (kbd "C-s") 'isearch-forward-regexp)
(define-key global-map (kbd "C-q") 'query-replace-regexp)
(define-key global-map (kbd "M-l") 'lisp-interaction-mode)
(define-key global-map (kbd "M-i") 'indent-region)

;; library keybinds
(define-key global-map (kbd "C-x g") 'magit-status)
(define-key global-map (kbd "C-x j") 'eshell-clean-and-open)

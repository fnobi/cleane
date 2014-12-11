;; basic keybinds
(define-key global-map (kbd "C-h") 'delete-backward-char)
(define-key global-map [?¥] [?\\])  ;; ¥の代わりにバックスラッシュを入力する

(define-key global-map (kbd "C-s") 'isearch-forward-regexp)
(define-key global-map (kbd "C-q") 'query-replace-regexp)
(define-key global-map (kbd "M-l") 'lisp-interaction-mode)
(define-key global-map (kbd "M-i") 'indent-region)

(define-key global-map (kbd "C-c C-l") 'toggle-truncate-lines)
(define-key global-map (kbd "C-x :") 'goto-line)
(define-key global-map (kbd "M-o") 'browse-url)
(define-key global-map (kbd "M-s") 'write-rough)

;; library keybinds
(define-key global-map (kbd "C-x g") 'magit-status)
(define-key global-map (kbd "C-x j") 'eshell-clean-and-open)
(define-key global-map (kbd "C-x f") 'anything-git-project)
(define-key global-map (kbd "C-x ;") 'anything-find-working-file)
(define-key global-map (kbd "C-x a a") 'anything-open-app)
(define-key global-map (kbd "C-x M-i") 'anything-insert-img)
(define-key global-map (kbd "C-x M-b") 'anything-open-bookmark)
(define-key global-map (kbd "C-x p") 'clip-buffer)
(define-key global-map (kbd "M-g") 'grunt)
(define-key global-map (kbd "M-n") 'ndk-build)

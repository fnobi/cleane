;; 新しいeshell bufferを、1キーバインドで開くための設定

(defvar eshell-max-shells-count 20)

;; 次に開くべきeshell bufferの名前(string)を、intに変換
(defun new-eshell-number ()
  (setq new-buffer-name (generate-new-buffer-name eshell-buffer-name))
  (if (= (length new-buffer-name) (length eshell-buffer-name))
      nil
    (string-to-int
     (substring
      new-buffer-name
      (+ (length eshell-buffer-name) 1) (- (length new-buffer-name) 1)))))

;; 指定した番号のeshell bufferを取得 (nilを渡せば*eshell*を返す)
(defun eshell-buffer-on-num (num)
  (get-buffer
   (concat
    eshell-buffer-name
    (if num (concat "<" (int-to-string num) ">") ""))))

;; アクティブなプロセスがないeshell bufferをkill
(defun clean-eshell-buffers (num)
  (setq buf (eshell-buffer-on-num num))
  (setq proc (get-buffer-process buf))
  (when (and buf (not proc)) (kill-buffer buf))
  (setq next-num (if num (+ num 1) 2))
  (when (< next-num eshell-max-shells-count) (clean-eshell-buffers next-num)))

;; cleanして、あたらしいeshellひらく
(defun eshell-clean-and-open ()
  (interactive)
  (clean-eshell-buffers nil)
  (eshell (new-eshell-number)))

;; 一回eshellを起動しないと、eshell-buffer-nameなどが入らないみたいなので、
;; 起動してすぐ閉じる
(eshell)
(clean-eshell-buffers nil)

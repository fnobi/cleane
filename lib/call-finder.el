(defun call-finder ()
  "現在のディレクトリをfinderで開きます"
  (interactive)
  (shell-command "open -a finder ."))

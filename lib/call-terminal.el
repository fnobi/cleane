(defun call-terminal ()
  "現在のディレクトリをterminalで開きます"
  (interactive)
  (shell-command "open -a terminal ."))

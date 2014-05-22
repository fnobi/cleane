(defun write-rough ()
  "現在のbufferをいいかんじのファイル名で保存します"
  (interactive)
  (setq rough (expand-file-name "~/Desktop/rough"))
  (write-file rough)
  (message (format "write to %s" rough)))

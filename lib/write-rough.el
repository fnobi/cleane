(defun rough-file-name (index)
  (setq dir (expand-file-name "~/Documents/rough"))
  (setq today (shell-command-to-string "echo -n $(date +%y%m%d)"))
  (setq filename (if (> index 0) 
                   (format "%s/%s_rough-%d.md" dir today index)
                   (format "%s/%s_rough.md" dir today)))
  (if (file-exists-p filename) (rough-file-name (+ index 1)) filename))

(defun write-rough ()
  "現在のbufferをいいかんじのファイル名で保存します"
  (interactive)
  (setq rough (rough-file-name 0))
  (write-file rough)
  (message (format "write to %s" rough)))

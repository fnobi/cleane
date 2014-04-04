(defun ggl (word)
  "ググります。"
  (interactive "sWord: ")
  (browse-url (concat "http://google.com/#q=" word)))

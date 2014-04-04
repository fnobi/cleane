(defun ggl (word)
  "ググります。"
  (interactive "sWord: ")
  (browse-url (concat "http://google.com/search?q=" word)))

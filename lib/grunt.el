(defun gruntfile-path (pwd)
  (interactive "DRoot Dir: ")
  (setq grunt-js (format "%s/Gruntfile.js" pwd))
  (setq grunt-coffee (format "%s/Gruntfile.coffee" pwd))
  (cond
   ((not pwd) nil)
   ((string= pwd "/") nil)
   ((file-exists-p grunt-js) grunt-js)
   ((file-exists-p grunt-coffee) grunt-coffee)
   (t (gruntfile-path (file-name-directory (directory-file-name pwd))))))

(defun gulpfile-path (pwd)
  (interactive "DRoot Dir: ")
  (setq gulp-js (format "%s/gulpfile.js" pwd))
  (setq gulp-coffee (format "%s/gulpfile.coffee" pwd))
  (cond
   ((not pwd) nil)
   ((string= pwd "/") nil)
   ((file-exists-p gulp-js) gulp-js)
   ((file-exists-p gulp-coffee) gulp-coffee)
   (t (gulpfile-path (file-name-directory (directory-file-name pwd))))))

(defun grunt (task-name)
  (interactive "sTask Name: ")

  (cond
   ((gruntfile-path pwd) ((lambda () 
                        (setq buffer-name (format "*grunt*" task-name))
                        (setq result (shell-command-to-string (format "grunt %s" task-name)))

                        (generate-new-buffer buffer-name)
                        (switch-to-buffer buffer-name)
                        (insert (ansi-color-apply result)))))
   ((gulpfile-path pwd) ((lambda () 
                        (setq buffer-name (format "*gulp*" task-name))
                        (setq result (shell-command-to-string (format "gulp %s" task-name)))

                        (generate-new-buffer buffer-name)
                        (switch-to-buffer buffer-name)
                        (insert (ansi-color-apply result)))))
   (t (message (format "config file not found. %s" (pwd))))))


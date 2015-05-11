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
   ((gruntfile-path default-directory) (eshell-command-on-shell (format "grunt %s" task-name)))
   ((gulpfile-path default-directory) (eshell-command-on-shell (format "gulp %s" task-name)))
   (t (message (format "config file not found. %s" (pwd))))))


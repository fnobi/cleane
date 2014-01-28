;; 
;; auto-java-completeはpackage-installできなかったため、
;; lib以下に手動でインストールをしている
;; 
;;  - https://github.com/emacs-java/auto-java-complete
;;  - http://www.emacswiki.org/emacs/AutoJavaComplete
;; 
;; ```
;; cd ~/.emacs.d/lib
;; git clone https://github.com/emacs-java/auto-java-complete.git
;; cd auto-java-complete
;; javac Tags.java
;; java Tags
;; ```

(require 'ajc-java-complete-config)
(add-hook 'java-mode-hook 'ajc-java-complete-mode)

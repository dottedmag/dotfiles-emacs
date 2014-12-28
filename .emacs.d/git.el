;; -*- emacs-lisp -*-

(defun gitk ()
  "Run gitk in current directory"
  (interactive)
  (start-process "shell-gitk" nil "gitk" "--all"))

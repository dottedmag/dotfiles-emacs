;;; dm-git -- Settings for editing git

;;; Commentary:

;;; Code:

(require 'dm-el-get)

(dm-el-get 'magit)

(require 'magit)

(defun gitk ()
  "Run gitk in current directory."
  (interactive)
  (start-process "shell-gitk" nil "gitk" "--all"))

(setq magit-last-seen-setup-instructions "1.4.0")

(provide 'dm-git)
;;; dm-git.el ends here

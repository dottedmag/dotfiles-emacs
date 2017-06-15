;;; dm-git -- Settings for editing git

;;; Commentary:

;;; Code:

(require 'dm-el-get)

(dm-el-get 'magit 'git-gutter-fringe+)

(require 'magit)

(magit-wip-after-apply-mode)
(magit-wip-after-save-mode)
(magit-wip-before-change-mode)

(setq vc-handled-backends (delq 'Git vc-handled-backends))

(global-set-key (kbd "C-x g") 'magit-status)

(global-git-gutter+-mode)

(defun gitk ()
  "Run gitk in current directory."
  (interactive)
  (start-process "shell-gitk" nil "gitk" "--all"))

(provide 'dm-git)
;;; dm-git.el ends here

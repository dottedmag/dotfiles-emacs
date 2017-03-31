;;; dm-projectile -- Set up projectile

;;; Commentary:

;;; Code:

(require 'dm-el-get)

(dm-el-get 'projectile)

(setq-default projectile-cache-file
              (expand-file-name "~/.var-emacs/projectile.cache"))
(setq-default projectile-known-projects-file
              (expand-file-name "~/.var-emacs/projectile-bookmarks.eld"))

(provide 'dm-projectile)
;;; dm-projectile.el ends here

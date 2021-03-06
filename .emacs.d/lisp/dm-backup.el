;;; dm-backup -- Configuration of backup files

;;; Commentary:

;;; Code:

(setq backup-by-copying t
      delete-old-versions t
      kept-old-versions 1
      kept-new-versions 3
      version-control t)

(setq backup-directory-alist
      `((".*" . "~/.var-emacs/backup")))

(setq auto-save-file-name-transforms
      `((".*" "~/.var-emacs/backup" t)))

(provide 'dm-backup)
;;; dm-backup.el ends here

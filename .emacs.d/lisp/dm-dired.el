;;; dm-dired -- Settings for Dired

;;; Commentary:

;;; Code:

(require 'dired)
(require 'dired-x)

(add-to-list 'dired-omit-extensions ".lo")

;; (defun dm-async-open ()
;;   "Open file(s) under cursor using system stuff."
;;   (interactive)
;;   (dired-do-shell-command "open"))

;; (define-key dired-mode-map (kbd "S-<return>") 'dm-async-open)

(provide 'dm-dired)
;;; dm-dired.el ends here

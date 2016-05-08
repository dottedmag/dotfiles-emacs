;;; dm-whitespace -- Default `whitespace-mode' settings

;;; Commentary:

;;; Code:

(require 'whitespace)

(setq whitespace-global-modes '(not dired-mode org-mode))

(setq whitespace-style '(face trailing tabs lines-tail empty tab-mark))

(global-whitespace-mode t)

(provide 'dm-whitespace)
;;; dm-whitespace.el ends here

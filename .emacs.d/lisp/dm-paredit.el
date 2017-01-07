;;; dm-paredit -- Configuration for Paredit

;;; Commentary:

;;; Code:

(require 'paredit)
(require 'eldoc)

(define-key paredit-mode-map (kbd "M-q") 'execute-extended-command)
(define-key paredit-mode-map (kbd "M-x") 'paredit-reindent-defun)

(eldoc-add-command 'paredit-backward-delete 'paredit-close-round)

(provide 'dm-paredit)
;;; dm-paredit.el ends here

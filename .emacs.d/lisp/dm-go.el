;;; dm-go -- Go editing setup

;;; Commentary:

;;; Code:

(eval-when-compile
  (require 'whitespace))

(defun dm-go-mode-hook ()
  "Setup go mode."
  (make-local-variable 'whitespace-line-column)
  (setq whitespace-line-column 120)
  (add-hook 'before-save-hook 'gofmt-before-save nil t))

(add-hook 'go-mode-hook 'dm-go-mode-hook)

(provide 'dm-go)
;;; dm-go.el ends here

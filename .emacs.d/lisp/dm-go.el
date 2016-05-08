;;; dm-go -- Go editing setup

;;; Commentary:

;;; Code:

(eval-when-compile
  (require 'whitespace)
  (require 'go-mode))

(setq gofmt-command (expand-file-name "~/g/bin/goimports"))

(defun dm-go-setup-whitespace ()
  "Adjust `whitespace-mode' settings for Go."
  ;; FIXME: Find the way to use default background color, not fied "white"
  ;; FIXME: Light gray highlight of TABs inside selection
  (face-remap-add-relative 'whitespace-tab :background "white")
  (make-local-variable 'whitespace-line-column)
  (setq whitespace-line-column 120)
  (make-local-variable 'whitespace-style)
  (add-to-list 'whitespace-style 'indentation::tab)
  (add-to-list 'whitespace-style 'space-after-tab::tab)
  (add-to-list 'whitespace-style 'space-before-tab::tab))

(defun dm-go-mode-hook ()
  "Setup `go-mode'."
  (dm-go-setup-whitespace)
  (add-hook 'before-save-hook 'gofmt-before-save nil t))

(add-hook 'go-mode-hook 'dm-go-mode-hook)

(provide 'dm-go)
;;; dm-go.el ends here

;;; dm-go -- Go editing setup

;;; Commentary:

;;; Code:

(eval-when-compile
  (require 'whitespace)
  (require 'go-mode)
  (require 'go-eldoc))

(defconst dm-golint (expand-file-name "~/g/bin/golint"))

(setq gofmt-command (expand-file-name "~/g/bin/goimports")
      go-eldoc-gocode (expand-file-name "~/g/bin/gocode"))

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

(defun dm-go-setup-compile ()
  "Run a bunch of linters on Go code."
  (make-local-variable 'compile-command)
  (setq compile-command
        (concat "go build -v && go test -v && go vet && " dm-golint)))

(defun dm-go-mode-hook ()
  "Setup `go-mode'."
  (dm-go-setup-whitespace)
  (dm-go-setup-compile)
  (add-hook 'before-save-hook 'gofmt-before-save nil t))

(add-hook 'go-mode-hook 'dm-go-mode-hook)

(when (eq system-type 'darwin)
  (require 'exec-path-from-shell)
  (exec-path-from-shell-copy-env "GOPATH"))

(provide 'dm-go)
;;; dm-go.el ends here

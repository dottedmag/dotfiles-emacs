(require 'python)

; Autoindentation after "Return"
(define-key python-mode-map "\C-m" 'newline-and-indent)

(show-trailing-whitespace-in 'python-mode-hook)

(add-to-mode-alist-ext 'jinja-mode "jt")

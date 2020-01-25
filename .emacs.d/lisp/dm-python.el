(require 'python)

(require 'dm-el-get)
(dm-el-get 'blacken)

; Autoindentation after "Return"
(define-key python-mode-map "\C-m" 'newline-and-indent)

(show-trailing-whitespace-in 'python-mode-hook)

(add-to-mode-alist-ext 'jinja-mode "jt")

(add-hook 'python-mode-hook 'blacken-mode)

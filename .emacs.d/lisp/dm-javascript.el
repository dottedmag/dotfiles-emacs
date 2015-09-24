(require 'js)

(add-to-list 'interpreter-mode-alist '("node" . js-mode))

(define-key js-mode-map "\C-m" 'newline-and-indent)

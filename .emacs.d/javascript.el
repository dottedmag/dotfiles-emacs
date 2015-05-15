(require 'js)

(add-to-list 'interpreter-mode-alist '("node" . js-mode))

(define-key js-mode-map "\C-m" 'newline-and-indent)

(add-hook 'js-mode-hook #'dm-maybe-disable-electric)

;;; dm-scheme -- Configuration for Scheme (especially Guile)

;;; Commentary:

;;; Code:

(require 'dm-el-get)
(require 'dm-paredit)
(require 'dm-rainbow)

(dm-el-get 'geiser)

(require 'geiser-mode)

(add-hook 'geiser-mode-hook #'enable-paredit-mode)
(add-hook 'geiser-repl-mode-hook #'enable-paredit-mode)
(add-hook 'geiser-mode-hook #'rainbow-delimiters-mode)
(add-hook 'geiser-repl-mode-hook #'rainbow-delimiters-mode)

(define-key geiser-mode-map (kbd "C-.") nil)
(define-key geiser-repl-mode-map (kbd "C-.") nil)

(provide 'dm-scheme)
;;; dm-scheme.el ends here

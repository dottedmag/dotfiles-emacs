;;; dm-elisp -- Configuration for ELisp editing

;;; Commentary:

;;; Code:

(require 'dm-rainbow)
(require 'dm-flycheck)
(require 'dm-paredit)

(eval-when-compile
  (require 'flycheck))

(setq flycheck-emacs-lisp-load-path 'inherit)
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)
(add-hook 'emacs-lisp-mode-hook #'enable-paredit-mode)

(provide 'dm-elisp)
;;; dm-elisp.el ends here

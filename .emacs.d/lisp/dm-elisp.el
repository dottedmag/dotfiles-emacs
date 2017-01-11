;;; dm-elisp -- Configuration for ELisp editing

;;; Commentary:

;;; Code:

(require 'dm-rainbow)

(eval-when-compile
  (require 'flycheck))

(setq flycheck-emacs-lisp-load-path 'inherit)
(add-hook 'elisp-mode 'rainbow-delimiters-mode)

(provide 'dm-elisp)
;;; dm-elisp.el ends here

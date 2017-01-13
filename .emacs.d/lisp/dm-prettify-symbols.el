;;; dm-prettify-symbols.el -- How Emacs should prettify symbols

;;; Commentary:

;;; Code:

(setq prettify-symbols-unprettify-at-point t)

(setq-default prettify-symbols-alist '((">=" . ?≥) ("<=" . ?≤)))

(add-hook 'prog-mode-hook #'prettify-symbols-mode)

(provide 'dm-prettify-symbols)
;;; dm-prettify-symbols.el ends here

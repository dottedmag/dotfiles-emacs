;;; dm-look.el -- How Emacs should show parens for me

;;; Commentary:

;;; Code:

(require 'paren)

(setq show-paren-delay 0
      show-paren-style 'expression
      show-paren-when-point-inside-paren t)

(face-spec-set 'show-paren-match
               '((t :inherit extra-bold))
               'face-defface-spec)

(defvar dm/parens-last-point 0)

(make-variable-buffer-local 'dm/parens-last-point)

(defun dm/show-parens-if-moved ()
  "Show parens if point position is different from the last one.
Designed to be run from `post-command-hook'."
  (when (and (bound-and-true-p show-paren-mode)
             (/= (point) dm/parens-last-point))
    (show-paren-function)
    (setq dm/parens-last-point (point))))

(add-hook 'post-command-hook #'dm/show-parens-if-moved)
(show-paren-mode 1)

(provide 'dm-parens)
;;; dm-parens.el ends here

;;; dm-smartparens -- Configure smartparens

;;; Commentary:

;;; Code:

(require 'dm-el-get)

(dm-el-get 'smartparens)

(require 'smartparens-config)

(defun dm/enable-smartparens ()
  "Enable smartparens in all programming modes except Clojure and ELisp."
  (unless (memq major-mode '(emacs-lisp-mode
                             clojure-mode
                             clojurescript-mode
                             cider-repl-mode))
    (turn-on-smartparens-strict-mode)))

(add-hook 'prog-mode-hook #'dm/enable-smartparens)

(provide 'dm-smartparens)
;;; dm-smartparens.el ends here

;;; dm-smartparens -- Configure smartparens

;;; Commentary:

;;; Code:

(require 'smartparens-config)

(defun dm/enable-smartparens ()
  "Enable smartparens in all programming modes except Clojure."
  (unless (eq major-mode 'clojure-mode)
    (turn-on-smartparens-strict-mode)))

(add-hook 'prog-mode-hook 'dm/enable-smartparens)

(provide 'dm-smartparens)
;;; dm-smartparens.el ends here

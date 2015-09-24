(require 'json-mode)

(defun dm>set-json-offset ()
  (setq-local js-indent-level 2))

(add-hook 'json-mode-hook #'dm>set-json-offset)

;;; dm-json -- Settings for JSON editing

;;; Commentary:

;;; Code:

(require 'dm-el-get)

(dm-el-get 'json-mode)

(require 'json-mode)

(defun dm>set-json-offset ()
  (setq-local js-indent-level 2))

(add-hook 'json-mode-hook #'dm>set-json-offset)

(provide 'dm-json)
;;; dm-json.el ends here

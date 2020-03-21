;;; dm-beancount -- Configuration for Beancount
;; -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(require 'dm-el-get)

(dm-el-get 'beancount-mode)

(defvar dm-bean-format-bin "bean-format")

(defun dm-bean-format-buffer ()
  "Format the current buffer using bean-format from B to E."
  (interactive)
  (unless (executable-find dm-bean-format-bin)
    (error "Could not locate executable \"%s\"" dm-bean-format-bin))
  (call-process-region (point-min) (point-max) "bean-format" t t t))

(defun dm-bean-format-add-hook ()
  "Add before-save hook to format .beancount."
  (when (string= (file-name-extension buffer-file-name) "beancount")
    (add-hook 'before-save-hook #'dm-bean-format-buffer nil t)))

(add-hook 'find-file-hook #'dm-bean-format-add-hook)

(provide 'dm-beancount)
;;; dm-beancount.el ends here

;;; dm-beancount -- Configuration for Beancount
;; -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(require 'dm-el-get)

(dm-el-get 'beancount-mode)

(defvar dm-bean-format-bin "bean-format")

(defun dm-bean-format-call (buffer)
  "Call bean-format on a a BUFFER."
  (with-current-buffer (get-buffer-create "*bean-format*")
    (erase-buffer)
    (insert-buffer-substring buffer)
    (if (zerop (call-process-region
                (point-min) (point-max) dm-bean-format-bin t t nil))
        (progn (copy-to-buffer buffer (point-min) (point-max))
               (kill-buffer))
      (display-buffer (current-buffer))
      (error
       "Running bean-format failed, see *bean-format* buffer for details"))))

(defun dm-bean-format-buffer ()
  "Format the current buffer using bean-format."
  (interactive)
  (unless (executable-find dm-bean-format-bin)
    (error "Could not locate executable \"%s\"" dm-bean-format-bin))
  (let ((cur-point (point))
        (cur-win-start (window-start)))
    (dm-bean-format-call (current-buffer))
    (goto-char cur-point)
    (set-window-start (selected-window) cur-win-start))
  (message "Formatted buffer with bean-format"))

(defun dm-bean-format-add-hook ()
  "Add before-save hook to format .beancount."
  (when (string= (file-name-extension buffer-file-name) "beancount")
    (add-hook 'before-save-hook #'dm-bean-format-buffer nil t)))

(add-hook 'find-file-hook #'dm-bean-format-add-hook)

(provide 'dm-beancount)
;;; dm-beancount.el ends here

;;; dm-whitespace -- Default `whitespace-mode' settings

;;; Commentary:

;;; Code:

(require 'whitespace)

(defun dm/enable-whitespace-mode ()
  "Enables whitespace mode in $HOME, except ~/srcs."
  (let* ((home (expand-file-name "~"))
         (srcs (file-name-as-directory
                (concat (file-name-as-directory home) "srcs"))))
    (if (and (string-prefix-p home buffer-file-name)
             (not (string-prefix-p srcs buffer-file-name)))
        (whitespace-mode))))

(add-hook 'find-file-hook #'dm/enable-whitespace-mode)

(setq whitespace-style '(face trailing tabs lines-tail empty tab-mark))

(provide 'dm-whitespace)
;;; dm-whitespace.el ends here

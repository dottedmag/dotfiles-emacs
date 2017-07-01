;;; dm-programming -- Settings common for all prorgamming activities

;;; Commentary:

;;; Code:

(require 'vc)

(setq vc-follow-symlinks t)
(delete 'Mtn vc-handled-backends)

(setq-default indent-tabs-mode nil)

(which-function-mode t)

(provide 'dm-programming)
;;; dm-programming.el ends here

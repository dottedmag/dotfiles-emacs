;;; dm-cvs -- Settings for handling CVS

;;; Commentary:

;;; Code:

(require 'vc-cvs)
(require 'pcvs)

(setq vc-cvs-stay-local nil)

(setq cvs-auto-remove-directories nil)

(remove-hook 'log-edit-hook 'log-edit-insert-message-template)

(provide 'dm-cvs)
;;; dm-cvs.el ends here

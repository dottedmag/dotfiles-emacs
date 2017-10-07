;;; dm-org-mode -- Settings for org-mode

;;; Commentary:

;;; Code:

(require 'dm-el-get)

(dm-el-get 'org-mode)
(dm-el-get 'diminish)

(require 'org-install)
(require 'org-mobile)

(setq-default org-complex-heading-regexp "athuasuthasnteohuosethu"
              org-startup-indented t)

(add-to-mode-alist-ext 'org-mode "org")

; Global hotkey for agenda
(define-key global-map "\C-ca" 'org-agenda)

(defun fix-org-mode-hotkey ()
  (define-key org-mode-map [?\C-,] 'switch-to-prev-window))

(add-hook 'org-mode-hook 'fix-org-mode-hotkey)

(defun my-org-publish ()
  (add-hook 'after-save-hook 'org-publish-current-project nil t))

(setq org-log-done t
      org-stuck-projects '("+LEVEL=2/-DONE" nil ("*") ""))

; Shortcut for M-x calendar

(diminish 'org-indent-mode)

(defalias 'cal 'calendar)

(provide 'dm-org-mode)
;;; dm-org-mode.el ends here

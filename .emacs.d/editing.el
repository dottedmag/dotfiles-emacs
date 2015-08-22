;
; Settings related to editing any type of text
;

(setq case-fold-search 'ignore-case-in-search)

(setq-default fill-column 80)

(put 'narrow-to-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(defun switch-to-prev-window ()
  (interactive)
  (other-window -1))

(defun switch-to-next-window ()
  (interactive)
  (other-window 1))

(global-set-key [?\C-,] 'switch-to-prev-window)
(global-set-key [?\C-.] 'switch-to-next-window)

(global-set-key [mouse-4] 'previous-line)
(global-set-key [mouse-5] 'next-line)

(global-set-key [(f12)] 'ff-find-other-file)

(global-set-key (kbd "S-C-f") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-b") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-n") 'shrink-window)
(global-set-key (kbd "S-C-p") 'enlarge-window)

(global-auto-revert-mode t)

(if (eq system-type 'darwin)
    (setq ns-right-alternate-modifier 'none))

; Disabling electric indentation based on a buffer-local variable

(require 'assoc)
(setq dm-disable-electric nil)
(aput 'safe-local-variable-values 'dm-disable-electric t)

(defun dm-maybe-disable-electric ()
  "Disable electric indentation if requested by buffer-local variable"
  (if dm-disable-electric
      (electric-indent-local-mode -1)))

(add-hook 'hack-local-variables-hook 'dm-maybe-disable-electric)

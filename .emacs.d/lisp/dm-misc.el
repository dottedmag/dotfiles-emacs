;;; dm-misc -- Miscellaneous settings

;;; Commentary:

;;; Code:

;; Enable which-key

(which-key-mode t)

;; remove GNU advertisments

(mapcar 'global-unset-key
        '("\C-h\C-c" "\C-h\C-d" "\C-h\C-p" "\C-h\C-w" "\C-hn" "\C-h\C-n"
          "\C-hP" "\C-h\C-n" "\C-h\C-m" "\C-hF"))

(if (eq system-type 'darwin)
    (progn (global-unset-key (kbd "s-q"))
           (global-unset-key (kbd "s-p"))
           (global-unset-key (kbd "s-w"))
           (global-unset-key (kbd "s-n"))))

(defun my-switch-to-ibuffer ()
  (interactive)
  (list-buffers)
  (ibuffer)
  (delete-other-windows))

(global-set-key (kbd "C-M-s") 'my-switch-to-ibuffer)

(setq sentence-end-double-space nil)

(setq ido-save-directory-list-file "~/.var-emacs/ido.last")
(setq pcache-directory "~/.var-emacs/pcache/")
(require 'ido)
(ido-mode t)

(provide 'dm-misc)
;;; dm-misc.el ends here

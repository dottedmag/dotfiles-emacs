; remove GNU advertisments
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

(setq ido-save-directory-list-file "~/.var-emacs/ido.last")
(require 'ido)
(ido-mode t)

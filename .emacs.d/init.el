;
; Global conventions:
; - everything version-controlled goes to ~/.emacs.d/
; - various files (caches, temporary files etc) go to ~/.var-emacs/
; - customizations are avoided at all costs
;

(load "~/.emacs.d/functions.el")

(load-init
 "dvorak-adjustments"
 "auto-save"
 "backup"
 "c"
 "cvs"
 "debian"
 "dired"
 "editing"
 "el-get"
 "emacsclient"
 "epg"
 "flycheck"
 "git"
 "i18n"
 "indent"
 "j"
 "javascript"
 "json"
 "look"
 "misc"
 "org-mode"
 "path"
 "perl"
 "popup"
 "programming"
 "python"
 "rust"
 "savehist"
 "smartparens"
 "tramp-init"
 "whitespace"
 "woman"
 "x"
 "xml")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(canlock-password "fb91c0c9c555c5d0f79559ce2bfa8474922896af")
 '(send-mail-function (quote sendmail-send-it)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)

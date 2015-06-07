;; -*- emacs-lisp -*-

;
; Global conventions:
; - everything version-controlled goes to ~/.emacs.d/
; - external code to be version-controlled goes to ~/.emacs.d/code/ (in load-path)
; - external code to be checked out manually goes to ~/.lib-emacs/ (not in
;   load-path), and have to be conditional in ~/.emacs.d/*.el
; - various files (caches, temporary files etc) go to ~/.var-emacs/
; - customizations are avoided at all costs
;

(load "~/.emacs.d/functions.el")

(load-init
 "dvorak-adjustments"
 "auto-save"
 "backup"
 "c"
 "cfengine"
 "cvs"
 "debian"
 "dired"
 "django"
 "editing"
 "el-get"
 "epg"
 "erlang"
 "git"
 "gnuserv"
 "i18n"
 "indent"
 "j"
 "javascript"
 "look"
 "misc"
 "org-mode"
 "path"
 "perl"
 "programming"
 "python"
 "tramp-init"
 "whitespace"
 "woman"
 "x"
 "xml"
 "yaml")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(canlock-password "fb91c0c9c555c5d0f79559ce2bfa8474922896af")
 '(safe-local-variable-values
   (quote
    ((whitespace-line-column . 120)
     (dired-omit-files . "^\\.?#\\|^\\.$\\|^\\.\\.$\\|^cf-\\|^stamp-h1$\\|^stamp-h\\.in$\\|^TAGS$\\|^cf3lex\\.c$\\|^cf3lex\\.l$\\|^cf3parse\\.h$\\|^cf3parse\\.c$")
     (dired-omit-files . "^\\.?#\\|^\\.$\\|^\\.\\.$\\|^cf-")
     (dired-omit-files . "^\\.?#\\|^\\.$\\|^\\.\\.$|^cf-")
     (dired-omit-mode . t)
     (encoding . UTF-8)
     (debian-changelog-mailing-address . "dottedmag@openinkpot.org")
     (tags-table-list "~/build/upstream/e/TAGS")
     (encoding . utf-8))))
 '(send-mail-function (quote sendmail-send-it)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)

;;
;; Global conventions:
;; - everything version-controlled goes to ~/.emacs.d/
;; - various files (caches, temporary files etc) go to ~/.var-emacs/
;; - customizations are avoided at all costs
;;

;; It's XXI century
(setq gc-cons-threshold 100000000)

(defvar dm/lisp-dir (expand-file-name "lisp" user-emacs-directory))

(add-to-list 'load-path dm/lisp-dir)

;; Improve look as soon as possible
(require 'dm-look)

(load "~/.emacs.d/lisp/dm-functions.el")

(load-init
 "dm-el-get"
 "dm-path"
 "dm-dvorak"
 "dm-auto-save"
 "dm-backup"
 "dm-c"
 "dm-cvs"
 "dm-clojure"
 "dm-debian"
 "dm-dired"
 "dm-editing"
 "dm-emacsclient"
 "dm-epg"
 "dm-elisp"
 "dm-flycheck"
 "dm-git"
 "dm-go"
 "dm-i18n"
 "dm-indent"
 "dm-j"
 "dm-javascript"
 "dm-json"
 "dm-misc"
 "dm-objc"
 "dm-org-mode"
 "dm-parens"
 "dm-perl"
 "dm-popup"
 "dm-prettify-symbols"
 "dm-programming"
 "dm-python"
 "dm-rust"
 "dm-savehist"
 "dm-scheme"
 "dm-smartparens"
 "dm-tiddlywiki"
 "dm-tramp"
 "dm-whitespace"
 "dm-woman"
 "dm-x"
 "dm-xml")

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

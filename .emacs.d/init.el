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
 "dm-atomic-chrome"
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
 "dm-markdown"
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
 "dm-web"
 "dm-whitespace"
 "dm-woman"
 "dm-x"
 "dm-xml"
 "dm-yaml")

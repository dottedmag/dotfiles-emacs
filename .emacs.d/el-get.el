(setq package-user-dir "~/.var-emacs/elpa")
(setq el-get-dir "~/.var-emacs/el-get")
(add-to-list 'load-path
             (concat (file-name-as-directory el-get-dir) "el-get"))

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

(add-to-list 'el-get-recipe-path "~/.emacs.d/recipes")

(setq my-packages '(ample-regexps auto-highlight-symbol cider
      cl-lib clojure-mode dash dynamic-fonts el-get
      emacs-goodies-el epl etags-select exec-path-from-shell f
      flycheck flycheck-pos-tip flycheck-rust font-utils fringe-helper
      git-gutter git-gutter-fringe guide-key haskell-mode
      haskell-mode-exts list-utils magit markdown-mode
      org-mode package persistent-soft pkg-info popwin popup
      queue rnc-mode s ucs-utils unicode-fonts web-mode yaml-mode))

(el-get 'sync my-packages)

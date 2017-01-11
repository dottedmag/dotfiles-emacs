;;; dm-el-get -- Settings for el-get package manager

;;; Commentary:

;;; Code:

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

(defvar dm-my-packages '(ample-regexps auto-highlight-symbol
      cider rainbow-delimiters cl-lib dash dynamic-fonts el-get
      use-package multiple-cursors emacs-goodies-el epl
      etags-select exec-path-from-shell f edn flycheck
      flycheck-rust font-utils fringe-helper smartparens
      clj-refactor git-gutter git-gutter-fringe guide-key
      haskell-mode go-mode json-mode list-utils magit
      markdown-mode yasnippet paredit hydra org-mode package
      persistent-soft pkg-info popwin popup go-eldoc queue
      rnc-mode s tid-mode ucs-utils unicode-fonts web-mode
      yaml-mode))

(el-get 'sync dm-my-packages)

(provide 'dm-el-get)
;;; dm-el-get.el ends here

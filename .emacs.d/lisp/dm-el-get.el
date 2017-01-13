;;; dm-el-get -- Settings for el-get package manager

;;; Commentary:

;;; Code:

(defvar el-get-dir "~/.var-emacs/el-get")
(add-to-list 'load-path
             (concat (file-name-as-directory el-get-dir) "el-get"))

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

(require 'el-get)
(require 'cl-lib)
(require 'package)

(setq package-user-dir "~/.var-emacs/elpa")

(add-to-list 'el-get-recipe-path "~/.emacs.d/recipes")

(defvar dm-el-get-requested ())

(defun dm-el-get (&rest rest)
  "Install REST packages and mark them as requested."
  (setq dm-el-get-requested (append rest dm-el-get-requested))
  (apply 'el-get 'sync rest))

(dm-el-get 'el-get)

(defun dm-el-get-garbage ()
  "Get garbage packages."
  (let* ((packages-to-keep (el-get-dependencies dm-el-get-requested))
         (installed (el-get-list-package-names-with-status "installed")))
    (cl-set-difference (mapcar 'el-get-as-symbol installed)
                       (mapcar 'el-get-as-symbol packages-to-keep))))

(defun dm-el-get-list-garbage ()
  "Print installed garbage packages."
  (interactive)
  (message (format "%s" (dm-el-get-garbage))))

(defun dm-el-get-remove-garbage ()
  "Remove installed garbage packages."
  (interactive)
  (el-get-cleanup dm-el-get-requested))

(provide 'dm-el-get)
;;; dm-el-get.el ends here

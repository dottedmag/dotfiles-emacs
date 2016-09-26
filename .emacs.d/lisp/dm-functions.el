;;; dm-functions -- Misc helper functions

;;; Commentary:

;;; Code:

(defun add-to-mode-alist-ext (mode &rest extensions)
  "Registers association with give MODE of given file EXTENSIONS."
  (dolist (extension extensions)
    (add-to-list 'auto-mode-alist (cons (concat "\\." extension "$") mode))))

(defun load-init (&rest modules)
  "Load MODULES from `lisp' directory."
  (dolist (module modules)
    (load (format "~/.emacs.d/lisp/%s" module))))

(defun show-trailing-whitespace ()
  "Enable/disable trailing whitespace."
  (setq show-trailing-whitespace t))

(defun show-trailing-whitespace-in (hook)
  "Enable trailing whitespace when corresponding HOOK is invoked."
  "Enables trailing whitespace in current buffer when passed hook is called"
  (add-hook hook 'show-trailing-whitespace))

(provide 'dm-functions)
;;; dm-functions.el ends here

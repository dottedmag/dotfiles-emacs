;;; dm-c -- Configuration for C

;;; Commentary:

;;; Code:

(require 'dm-el-get)
(require 'dm-functions)
(require 'cc-mode)

(setq c-default-style "stroustrup"
      c-basic-offset 4
      c-hanging-braces-alist nil
      c-indent-comments-syntactically-p t
      c-style-variables-are-local-p nil
      c-cleanup-list '(defun-close-semi
                        compact-empty-funcall
                        list-close-comma
                        scope-operator
                        compact-empty-funcall))

(add-hook 'c-mode-common-hook #'declare-linux-tabs-only)

(defun declare-linux-tabs-only ()
  "Mode hook for Linux C configuration."
  (c-add-style
   "linux-tabs-only"
   '("linux" (c-offsets-alist
              (arglist-cont-nonempty
               c-lineup-gcc-asm-reg
               c-lineup-arglist-tabs-only)))))

(add-to-mode-alist-ext 'c-mode "h")

(define-key c-mode-base-map "\C-m" 'newline-and-indent)

(defun c-mode-setup ()
  "Mode hook for C configuration."
  (c-toggle-auto-hungry-state 1))

(add-hook 'c-mode-common-hook 'c-mode-setup)
(show-trailing-whitespace-in 'c-mode-common-hook)

;; -- kernel coding style --

(defun c-kernel-mode-hook ()
  "Mode hook for Linux kernel configuration."
  (let ((filename (buffer-file-name)))
    ;; Enable kernel mode for the appropriate files
    (when (and filename
               (string-match (expand-file-name "~/build/upstream/util-linux-ng")
                             filename))
      (setq indent-tabs-mode t)
      (c-set-style "linux-tabs-only"))))

(add-hook 'c-mode-hook #'c-kernel-mode-hook)

;; - select from several tags interactively

(global-set-key "\M-." 'etags-select-find-tag)

(provide 'dm-c)
;;; dm-c.el ends here

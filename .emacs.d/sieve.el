;; -*- emacs-lisp -*-

(require 'sieve)

(add-hook 'sieve-mode-hook #'sieve-offset)

(defun sieve-offset ()
  (setq c-basic-offset 2))

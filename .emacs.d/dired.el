;; -*- emacs-lisp -*-

(require 'dired-x)

(add-hook 'dired-mode-hook
          (function (lambda ()
                      (dired-omit-mode 1))))

(add-to-list 'dired-omit-extensions ".lo")
(add-to-list 'dired-omit-extensions ".d")

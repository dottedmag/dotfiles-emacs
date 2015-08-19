;; -*- emacs-lisp -*-

(blink-cursor-mode t)
(show-paren-mode 1)

(setq blink-cursor-delay 0.3
      blink-cursor-interval 0.1
      blink-cursor-blinks 0
      column-number-mode t
      inhibit-startup-message t
      show-paren-delay 0
      truncate-partial-width-windows nil
      diff-switches "-u")

(tooltip-mode 0)

; Under OS X visible bell is ugly

(cond
 ((eq system-type 'darwin)
  (setq visible-bell nil)
  (setq ring-bell-function 'ignore))
 (t
  (setq visible-bell t)))

(global-font-lock-mode t)

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
  (defun invert-mode-lines ()
    (invert-face 'mode-line)
    (invert-face 'mode-line-inactive))
  (defun invert-mode-lines-bell ()
    (invert-mode-lines)
    (run-with-timer 0.1 nil 'invert-mode-lines))
  (setq ring-bell-function 'invert-mode-lines-bell))
 (t
  (setq visible-bell t)))

(global-font-lock-mode t)

(if (eq system-type 'darwin)
    (set-face-attribute 'default nil
                        :family "Liberation Mono"
                        :height 120))

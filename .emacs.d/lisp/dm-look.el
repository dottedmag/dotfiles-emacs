;;; dm-look.el -- How Emacs should look like

;;; Commentary:

;;; Code:

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Turn off splash screen
(setq inhibit-startup-message t)

(blink-cursor-mode t)

(setq blink-cursor-delay 0.3
      blink-cursor-interval 0.1
      blink-cursor-blinks 0
      column-number-mode t
      truncate-partial-width-windows nil
      diff-switches "-u")

(tooltip-mode 0)

;;; Under OS X visible bell is ugly, do our own

(defun dm-invert-mode-line ()
  "Invert mode line colors."
  (invert-face 'mode-line)
  (invert-face 'mode-line-inactive))

(defun dm-bell-flash-mode-line ()
  "Do a visual bell by quickly flashing mode line."
  (dm-invert-mode-line)
  (run-with-timer 0.1 nil 'dm-invert-mode-line))

(when (eq system-type 'darwin)
  (setq ring-bell-function 'dm-bell-flash-mode-line))

;;; Under other OSes visual bell is fine

(unless (eq system-type 'darwin)
  (setq visible-bell t))

(global-font-lock-mode t)

(if (eq system-type 'darwin)
    (set-face-attribute 'default nil
                        :family "Liberation Mono"
                        :height 120))

(face-spec-set
 'font-lock-keyword-face
 '((((background light)) :foreground "black")
   (((background dark))  :foreground "white")))

(face-spec-set
 'font-lock-comment-face
 '((default :slant italic)
   (((background light)) :foreground "LightYellow4")
   (((background dark)) :foreground "light gray")))

(face-spec-set
 'font-lock-variable-name-face
 '((((background light)) :foreground "blue1")
   (((background dark)) :foreground "sky blue")))

(face-spec-set
 'font-lock-string-face
 '((((background light)) :foreground "green4")
   (((background dark)) :foreground "light green")))

(face-spec-set
 'font-lock-constant-face
 '((default :slant italic)
   (((background light)) :foreground "blue4")
   (((background dark)) :foreground "orange")))

(face-spec-set
 'font-lock-type-face
 '((((background light)) :foreground "blue4")
   (((background dark)) :foreground "orange")))

(provide 'dm-look)
;;; dm-look.el ends here

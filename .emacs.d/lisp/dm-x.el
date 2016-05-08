(setq mouse-yank-at-point t
      frame-title-format "%b - emacs")
(mouse-avoidance-mode 'exile)

(if (eq system-type 'darwin)
    (progn
      (setq exec-path (cons (expand-file-name "~/bin") exec-path))
      (defun x ()
        "Run iTerm in current directory"
        (interactive)
        (start-process "iterm" nil "runiterm" default-directory)))
  (defun x ()
    "Run X terminal in current directory"
    (interactive)
    (start-process "shell-x" nil "x-terminal-emulator")))

(when (eq system-type 'darwin)
  (defun raise-new-cocoa-frame (frame)
    (if (display-graphic-p)
        (select-frame-set-input-focus (selected-frame))))
  (add-hook 'after-make-frame-functions 'raise-new-cocoa-frame t))
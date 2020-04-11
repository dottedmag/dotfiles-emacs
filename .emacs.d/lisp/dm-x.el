;;; dm-x -- GUI config of Emacs

;;; Commentary:

;;; Code:

(setq mouse-yank-at-point t
      mouse-wheel-scroll-amount '(1)
      frame-title-format "%b - emacs")
(mouse-avoidance-mode 'exile)

(defun dm/darwin-finder ()
  "Run Finder in current directory."
  (interactive)
  (start-process "finder" nil "open" "."))

(defun dm/darwin-kitty ()
  "Run Kitty in current directory."
  (interactive)
  (start-process "kitty" nil "kitty" "-1"))

(defun dm/x-x ()
  "Run X terminal in turrent directory."
  (interactive)
  (start-process "shell-x" nil "x-terminal-emulator"))

(defun dm/x-setup ()
  "Set up Emacs for Linux/X."
  (defalias 'x 'dm/x-x))

(defun dm/darwin-raise-new-cocoa-frame (frame)
  "Puts newly created FRAME under Cocoa into foreground."
  (when (display-graphic-p)
    (select-frame-set-input-focus (selected-frame))))

(defun dm/darwin-new-buffer ()
  "Create a new unnamed buffer in a current directory."
  (interactive)
  (let ((buf (generate-new-buffer "untitled")))
    (switch-to-buffer buf)
    (funcall initial-major-mode)
    (setq buffer-offer-save t)))

(defun dm/darwin-keybindings ()
  "Set keybindings better aligned with (my understanding of) OS X."
  (global-unset-key (kbd "s-k")) ; kill-this-buffer
  (global-set-key (kbd "s-o") 'ido-find-file)
  (global-set-key (kbd "s-w") 'kill-this-buffer)
  (global-set-key (kbd "s-t") 'dm/darwin-new-buffer))

(defun dm/darwin-setup ()
  "Set up Emacs for OS X."
  (dm/darwin-keybindings)
  (setq exec-path (cons (expand-file-name "~/bin") exec-path))
  (defalias 'x 'dm/darwin-kitty)
  (defalias 'f 'dm/darwin-finder)
  (add-hook 'after-make-farme-functions 'dm/darwin-raise-new-cocoa-frame t))

(defun dm/mac-setup ()
  "Set up Emacs for OS X (mituharu emacs-mac port)."
  (setq mac-option-modifier 'meta)
  (setq mac-command-modifier 'super))

(when (eq system-type 'darwin)
  (dm/darwin-setup))
(when (eq system-type 'gnu/linux)
  (dm/x-setup))
(when (eq window-system 'mac)
  (dm/mac-setup))

(provide 'dm-x)
;;; dm-x.el ends here

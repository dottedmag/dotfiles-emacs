;; -*- emacs-lisp -*-

;
; Remapping keyboard to feel comfortable in Emacs with Dvorak layout
; Switches C-q <-> C-x and M-q <-> M-x
;

(setq dvorak-terminal-setup (make-hash-table :test 'equal))

; keyboard-translate changes per-terminal map, so
; `dvorak-current-terminal-setup' needs to be run on each terminal used.
(defun dvorak-current-terminal-setup ()
  (keyboard-translate ?\C-q ?\C-x)
  (keyboard-translate ?\C-x ?\C-q)
  (keyboard-translate ?\C-Q ?\C-X)
  (keyboard-translate ?\C-X ?\C-Q))

; Next time terminal is open (e.g. emacsclient -t on same tty) all the
; customizations are gone and need to be applied again.
(defun clean-terminal-setup (terminal)
  (remhash (terminal-name terminal) dvorak-terminal-setup))
(add-hook 'delete-terminal-functions 'clean-terminal-setup)

; Set up terminal once and remember it was set up
(defun dvorak-setup-terminal (&optional frame)
  (unless (gethash (terminal-name) dvorak-terminal-setup)
    (dvorak-current-terminal-setup)
    (puthash (terminal-name) t dvorak-terminal-setup)))

; There is no hook to run after new terminal is opened, so we hook on frame
; creation/activation instead.
;
; focus-in-hook is run when some frame is activated. We go and fix terminal for
; this frame if needed.
(add-hook 'focus-in-hook 'dvorak-setup-terminal)
; When new frame is created and focused `focus-in-hook' is not called because
; WHY WOULD ANYONE NEED THAT? Hook to `after-make-frame-functions' as well in
; hope to cover all scenarios.
(add-hook 'after-make-frame-functions 'dvorak-setup-terminal t)
; And also setup the one created during the init.
(dvorak-setup-terminal)

(global-set-key "\M-x" 'fill-paragraph)
(global-set-key "\M-q" 'execute-extended-command)

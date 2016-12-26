;
; Settings related to editing any type of text
;

(setq case-fold-search 'ignore-case-in-search)

(setq-default fill-column 80)

(put 'narrow-to-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(defun switch-to-prev-window ()
  (interactive)
  (other-window -1))

(defun switch-to-next-window ()
  (interactive)
  (other-window 1))

(global-set-key [?\C-,] 'switch-to-prev-window)
(global-set-key [?\C-.] 'switch-to-next-window)

(global-set-key [mouse-4] 'previous-line)
(global-set-key [mouse-5] 'next-line)

(global-set-key [(f12)] 'ff-find-other-file)

(global-set-key (kbd "S-C-f") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-b") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-n") 'shrink-window)
(global-set-key (kbd "S-C-p") 'enlarge-window)

;;; A copy global-auto-revert-mode with a "fix" removed:
;;; use notification services.

(require 'autorevert)

;;;###autoload
(define-minor-mode global-auto-revert-mode
  "Toggle Global Auto Revert mode.
With a prefix argument ARG, enable Global Auto Revert mode if ARG
is positive, and disable it otherwise.  If called from Lisp,
enable the mode if ARG is omitted or nil.

Global Auto Revert mode is a global minor mode that reverts any
buffer associated with a file when the file changes on disk.  Use
`auto-revert-mode' to revert a particular buffer.

If `global-auto-revert-non-file-buffers' is non-nil, this mode
may also revert some non-file buffers, as described in the
documentation of that variable.  It ignores buffers with modes
matching `global-auto-revert-ignore-modes', and buffers with a
non-nil vale of `global-auto-revert-ignore-buffer'.

When a buffer is reverted, a message is generated.  This can be
suppressed by setting `auto-revert-verbose' to nil.

This function calls the hook `global-auto-revert-mode-hook'.
It displays the text that `global-auto-revert-mode-text'
specifies in the mode line."
  :global t :group 'auto-revert :lighter global-auto-revert-mode-text
  (auto-revert-set-timer)
  (if global-auto-revert-mode
      (auto-revert-buffers)
    (dolist (buf (buffer-list))
      (with-current-buffer buf
        (when auto-revert-use-notify
          (auto-revert-notify-rm-watch))))))

(global-auto-revert-mode t)

(if (eq system-type 'darwin)
    (setq ns-right-alternate-modifier 'none))

; Disabling electric indentation based on a buffer-local variable

(require 'assoc)
(setq dm-disable-electric nil)
(aput 'safe-local-variable-values 'dm-disable-electric t)

(defun dm-maybe-disable-electric ()
  "Disable electric indentation if requested by buffer-local variable"
  (if dm-disable-electric
      (electric-indent-local-mode -1)))

(add-hook 'hack-local-variables-hook 'dm-maybe-disable-electric)

;; -*- emacs-lisp -*-

; Avoids recursive loading
(require 'tramp)

;(setq tramp-persistency-file-name "~/.var-emacs/tramp.cache")

; Matching default ZSH prompt
;(setq tramp-shell-prompt-pattern "[^#$%>\n]*[#$%>] *\\(ESC\\[[0-9;]*[a-zA-Z] *\\)*")

; <<CUT
; emacs 22 compatibility
;(setq tramp-default-proxies-alist nil)

;; (defun add-to-tramp-proxies (&rest proxies)
;;   (dolist (proxy proxies)
;;     (add-to-list 'tramp-default-proxies-alist
;;                  `(,proxy "^root$" "/ssh:%h:"))))

;; (add-to-tramp-proxies "beer")
; >>CUT

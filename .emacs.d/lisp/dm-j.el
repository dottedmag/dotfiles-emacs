(defconst cj-c-style
  '(;; 4 spaces
    (c-basic-offset . 4)
    ;; Braces on new lines
    (c-hanging-braces-alist . ((substatement-open before after)
                               (statement-cont)
                               (brace-list-open)
                               (brace-list-close)
                               (brace-list-intro)
                               (brace-entry-open)))
    ;; Newline after 'case' label
    (c-hanging-colons-alist . ((case-label after)))
    ;; Don't place comma on a separate line after array/aggregate
    (c-cleanup-list . (list-close-comma))
    ;; Indentation
    (c-offsets-alist . ((defun-open . 0)
                        (defun-block-intro . +)
                        (substatement-open . 0)
                        (statement-cont . +)
                        (arglist-cont-nonempty . +))))
  "CJ C Style")

(c-add-style "cj" cj-c-style)

(add-to-list 'auto-mode-alist '("/vu/.*\\.mk$" . perl-mode))
(add-to-list 'auto-mode-alist '("/vu/.*/Makefile$" . perl-mode))

(require 'flycheck)

(flycheck-define-checker fyvaproldzh
  ""
  :command ("runfyvaproldzh" source-inplace)
  :error-patterns
  ((error line-start (file-name) ":" line ":" column ": " (message) line-end))
  :modes (js-mode js2-mode web-mode))

(add-to-list 'flycheck-checkers 'fyvaproldzh)

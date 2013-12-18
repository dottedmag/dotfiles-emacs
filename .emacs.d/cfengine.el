;;;
;;; C code style for CFEngine project.
;;;
;;; Author: Mikhail Gusarov <mikhail.gusarov@cfengine.com>
;;;

;;
;; TODO: special rule for C99 (Foo) { 1, 2, 3 } initializers.
;; TODO: special rule for whitespace between if/while/for and paren.
;;

(defconst cfengine-c-style
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
                        (statement-cont . +))))
  "CFEngine Code Style")

(c-add-style "CFEngine" cfengine-c-style)

;;
;; CFEngine uses CapitalizedWords for function names
;;

(defun cfengine-c-mode-hook ()
  (if (eq c-file-style "CFEngine")
      (progn
        (setq indent-tab-mode nil)
        (setq c-tab-always-indent t)
        (subword-mode 1))))

(add-hook 'c-mode-hook 'cfengine-c-mode-hook)

(provide 'cfengine-code-style)

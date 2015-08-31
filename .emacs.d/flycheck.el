(require 'flycheck)

(setq flycheck-check-syntax-automatically '(save idle-change mode-enabled)
      flycheck-idle-change-delay 5)

;; popup does not work well with whitespace-mode, so disable ws-mode while
;; viewing a popup in flycheck.

(defun dm>flycheck-pos-tip-error-messages (errors)
  (let ((ws-mode global-whitespace-mode))
    (if ws-mode
        (global-whitespace-mode -1))
    (flycheck-pos-tip-error-messages errors)
    (if ws-mode
        (global-whitespace-mode))))

(eval-after-load 'flycheck
  '(custom-set-variables
   '(flycheck-display-errors-function #'dm>flycheck-pos-tip-error-messages)))

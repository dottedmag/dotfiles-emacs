;;; dm-flycheck -- Set up Flycheck

;;; Commentary:

;;; Code:

(require 'dm-el-get)

(dm-el-get 'flycheck)

(require 'flycheck)

(setq flycheck-check-syntax-automatically '(save idle-change mode-enabled)
      flycheck-idle-change-delay 5
      flycheck-display-errors-delay 0
      flycheck-temp-prefix "#.flycheck")

(global-flycheck-mode t)

(provide 'dm-flycheck)
;;; dm-flycheck.el ends here

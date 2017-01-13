;;; dm-el-get -- Settings for popups

;;; Commentary:

;;; Code:

(require 'dm-el-get)

(dm-el-get 'popup)

(require 'popup)

(set-face-attribute 'popup-tip-face nil
                    :background "gray80"
                    :foreground "black")

(provide 'dm-popup)
;;; dm-popup.el ends here

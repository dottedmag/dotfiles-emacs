;;; dm-web -- web-mode

;;; Commentary:

;;; Code:

(require 'dm-el-get)

(dm-el-get 'web-mode)

(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))

(setq-default web-mode-markup-indent-offset 2)

(provide 'dm-web)
;;; dm-web.el ends here

;;; dm-edit-mode -- settings for Chrome extension

;;; Commentary:

(require 'dm-el-get)

(dm-el-get 'atomic-chrome)

(require 'atomic-chrome)

(setq atomic-chrome-buffer-open-style 'split)
(setq atomic-chrome-extension-type-list '(ghost-text))

(atomic-chrome-start-server)

;;; Code:

(provide 'dm-atomic-chrome)
;;; dm-atomic-chrome.el ends here

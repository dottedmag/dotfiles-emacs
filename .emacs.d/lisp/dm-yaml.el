;;; dm-yaml -- YAML

;;; Commentary:

;;; Code:

(require 'dm-el-get)

(dm-el-get 'yaml-mode)

(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))

(provide 'dm-yaml)
;;; dm-yaml.el ends here

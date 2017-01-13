;;; dm-path -- Set up PATHs

;;; Commentary:

;;; Code:

(require 'dm-el-get)

(dm-el-get 'exec-path-from-shell)

(require 'exec-path-from-shell)

(when (eq system-type 'darwin)
  (add-to-list 'exec-path-from-shell-variables "EMAIL")
  (exec-path-from-shell-initialize))

(provide 'dm-path)
;;; dm-path.el ends here

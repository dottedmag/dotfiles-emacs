;;; dm-rust -- Set up Rust support

;;; Commentary:

;;; Code:

(require 'dm-el-get)

(dm-el-get 'rust-mode 'flycheck-rust)

(require 'rust-mode)
(require 'flycheck-rust)

(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)

(add-hook 'rust-mode-hook #'flycheck-mode)

(provide 'dm-rust)
;;; dm-rust.el ends here

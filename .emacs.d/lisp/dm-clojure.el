;;; dm-clojure -- Configuration for Clojure

;;; Commentary:

;;; Code:

(require 'dm-paredit)
(require 'dm-rainbow)

(add-hook 'clojure-mode-hook #'enable-paredit-mode)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

(provide 'dm-clojure)
;;; dm-clojure.el ends here

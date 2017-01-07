;;; dm-clojure -- Configuration for Clojure

;;; Commentary:

;;; Code:

(require 'dm-paredit)

(add-hook 'clojure-mode-hook #'enable-paredit-mode)

(provide 'dm-clojure)
;;; dm-clojure.el ends here

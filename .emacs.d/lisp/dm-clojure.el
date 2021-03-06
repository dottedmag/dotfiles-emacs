;;; dm-clojure -- Configuration for Clojure

;;; Commentary:

;;; Code:

(require 'dm-el-get)
(require 'dm-paredit)
(require 'dm-rainbow)
(require 'dm-prettify-symbols)
(require 'dm-company)

(dm-el-get 'cider 'clj-refactor)

(defvar dm/clojure-prettified-symbols
  '(("not=" . ?≠)))

(defun dm/clojure-prettify-symbols ()
  "Undo damage done by clojure-mode.el and add more prettification."
  ;; clojure-mode overwrites global prettification settings. Undo and add local.
  (setq prettify-symbols-alist
        (append dm/clojure-prettified-symbols
         (default-value 'prettify-symbols-alist)
         prettify-symbols-alist))
  (prettify-symbols-mode 1))

(push '(cider-cljs-lein-repl
       . "(do (use 'figwheel-sidecar.repl-api) (start-figwheel!) (cljs-repl))")
      safe-local-variable-values)

(add-hook 'clojure-mode-hook #'enable-paredit-mode)
(add-hook 'cider-repl-mode-hook #'enable-paredit-mode)
(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
(add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook #'dm/clojure-prettify-symbols)
(add-hook 'cider-mode-hook #'company-mode)
(add-hook 'cider-repl-mode-hook #'company-mode)

(provide 'dm-clojure)
;;; dm-clojure.el ends here

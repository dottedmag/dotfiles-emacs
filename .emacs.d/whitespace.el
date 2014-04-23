(require 'whitespace)

(setq whitespace-global-modes '(not dired-mode))

(setq whitespace-style '(face trailing tabs lines-tail empty tab-mark))

(global-whitespace-mode t)

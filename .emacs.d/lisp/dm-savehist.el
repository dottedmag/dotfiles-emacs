(require 'savehist)

(setq savehist-file "~/.var-emacs/history"
      savehist-additional-variables '(kill-ring search-ring regexp-search-ring)
      history-length 1000)
(savehist-mode 1)

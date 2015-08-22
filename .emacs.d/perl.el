(require 'cperl-mode)

(add-to-mode-alist-ext 'cperl-mode "pl" "pm")

(put 'cperl-indent-level 'safe-local-variable 'integerp)

(define-key cperl-mode-map "\C-m" 'cperl-linefeed)

(cperl-set-style 'Whitesmith)

(show-trailing-whitespace-in 'cperl-mode-hook)

(setq-default cperl-indent-parens-as-block t)


(autoload 'notmuch "notmuch" t)

(eval-after-load "notmuch"
  '(progn
     (setq notmuch-command "/home/dottedmag/w/notmuch/notmuch")))

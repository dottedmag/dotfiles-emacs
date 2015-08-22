(setq tramp-persistency-file-name "~/.var-emacs/tramp")
(require 'tramp)

(setq tramp-ssh-controlmaster-options
      "-o ControlPath=%%C -o ControlMaster=auto -o ControlPersist=no")
(add-to-list 'tramp-default-proxies-alist
             '("dottedmag\\.net\\'" "\\`root\\'" "/ssh:%h:"))
(add-to-list 'tramp-default-proxies-alist
             '("vu\\'" "\\`root\\'" "/ssh:%h:"))
(add-to-list 'tramp-default-proxies-alist
             '("vu32\\'" "\\`root\\'" "/ssh:%h:"))

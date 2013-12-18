;; -*- emacs-lisp -*-

(add-to-list 'load-path "~/.lib-emacs/org-mode/lisp")
(require 'org-install)
(require 'org-mobile)

(setq org-mobile-directory "/ssh:burger:/srv/www/org/htdocs")
(setq org-directory (expand-file-name "~/.org"))
(setq org-mobile-inbox-for-pull (expand-file-name "~/.org/from-mobile.org"))

(setq-default org-complex-heading-regexp "athuasuthasnteohuosethu"
              org-startup-indented t)

(add-to-mode-alist-ext 'org-mode "org")

; Global hotkey for agenda
(define-key global-map "\C-ca" 'org-agenda)

(defun gtd ()
  (interactive)
  (find-file "~/.org/Main.org"))

(global-set-key (kbd "C-S-s") 'gtd)

(defun fix-org-mode-hotkey ()
  (define-key org-mode-map [?\C-,] 'switch-to-prev-window))

(add-hook 'org-mode-hook 'fix-org-mode-hotkey)

(defun my-org-publish ()
  (add-hook 'after-save-hook 'org-publish-current-project nil t))

(setq org-log-done t
      org-agenda-files '("~/.org")
      org-stuck-projects '("+LEVEL=2/-DONE" nil ("*") ""))

(if (eq system-name "leibnitz.dottedmag.net")
  (progn (add-hook 'org-mode-hook 'my-org-publish)
         (setq org-publish-project-alist
               '(("main"
                  :base-directory "~/.org/"
                  :publishing-directory "/ssh:burger:public_html/tasks/"
                  :base-extension "org")))))

; Shortcut for M-x calendar

(defalias 'cal 'calendar)


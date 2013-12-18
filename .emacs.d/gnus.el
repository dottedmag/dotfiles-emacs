;; -*- emacs-lisp -*-

(defun is-local-mail ()
  (or
   (equal (system-name) "leibnitz")
   (equal (system-name) "leibnitz.dottedmag.net")))

(load-init
 "gnus-fidocite"
 "gnus-spam")

;; Personalities

(setq user-mail-address "dottedmag@dottedmag.net"
      user-full-name "Mikhail Gusarov"
      gnus-posting-styles
      '((".*"
         (signature "")
         (body "<#part sign=pgpmime>\n")
         (name "Mikhail Gusarov")
         (address "dottedmag@dottedmag.net")
         (eval (setq snp:quote-initials t)))
        ((header "message-id" ".*")
         (body ""))
;; <<CUT
        ((header "to" ".*@lists.altlinux.org")
         (address "dottedmag@altlinux.org"))
;; >>CUT
        ("altlinux.*"
         (address "dottedmag@altlinux.org"))))
;; <<CUT

;; Fetch servers
(setq gnus-select-method
      (if (is-local-mail)
          '(nnimap "localhost"
                   (nnimap-stream shell)
                   (imap-shell-program "imap"))
        '(nnimap "localhost"
                 (nnimap-stream shell)
                 (imap-shell-program "ssh homenas imap"))))
;; >>CUT

;; Directories, files, subscription

(setq gnus-save-newsrc-file nil
      gnus-read-newsrc-file nil
      gnus-always-read-dribble-file t
      gnus-read-active-file 'some
      gnus-subscribe-newsgroup-method 'gnus-subscribe-alphabetically
      gnus-check-new-newsgroups t)

;; Look and feel

(setq gnus-summary-line-format "%U%R%z%{|%}%4k%{|%}%-25,25f%{|%B%}%s\n"
      gnus-treat-display-smiles nil ; NO STUPID GRAPHICAL SMILES!
      gnus-use-full-window nil)

(add-hook 'gnus-group-mode-hook 'gnus-topic-mode)

;; HTML rendering

(setq mm-text-html-renderer 'html2text
      mm-discouraged-alternatives '("text/html"
                                    "text/richtext"))

;; PGP

(setq mml2015-signers '("3E338888"))

;; BBDB

(require 'bbdb)
(require 'bbdb-gnus)

(add-hook 'gnus-startup-hook 'bbdb-insinuate-gnus)
(add-hook 'gnus-startup-hook 'bbdb-insinuate-message)

;; Sent mail

(setq gnus-outgoing-message-group "sent")

;; Threading

(setq gnus-build-sparse-threads t
      gnus-summary-thread-gathering-function 'gnus-gather-threads-by-references
      gnus-simplify-subject-functions '(gnus-simplify-subject-re
                                        gnus-simplify-subject-fuzzy
                                        gnus-simplify-whitespace)
      gnus-fetch-old-headers t)

;; Hotkeys

(defun my-switch-to-gnus-group-buffer ()
  "Switch to gnus group buffer if it exists, otherwise start gnus"
  (interactive)
  (if (or (not (fboundp 'gnus-alive-p))
          (not (gnus-alive-p)))
      (gnus)
    (switch-to-buffer "*Group*"))
  (gnus-group-get-new-news))

(global-set-key (kbd "C-S-g") 'my-switch-to-gnus-group-buffer)

;; Groups

(setq gnus-parameters
      '(("debian-.*" (gnus-mailing-list-followup-to))))

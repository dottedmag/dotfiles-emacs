;; -*- emacs-lisp -*-

(defun run-on-article (cmd)
  (dolist (art gnus-newsgroup-processable)
    (gnus-summary-goto-article art)
    (gnus-summary-show-raw-article)
    (gnus-summary-save-in-pipe cmd)))

(defun spam ()
  "Submit Spam."
  (interactive)
  (run-on-article "ssh burger sa-learn --spam"))

(defun ham ()
  "Submit Ham."
  (interactive)
  (run-on-article "ssh burger sa-learn --ham"))

;;; dm-javascript -- JavaScript editing

;;; Commentary:

;;; Code:

(require 'dm-el-get)

(dm-el-get 'js2-mode 'rjsx-mode)

(require 'js2-mode)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

(defun dm-add-externs (externs)
  "Add number of EXTERNS to js2 externs list."
  (dolist (elt externs)
    (push elt js2-additional-externs)))

(defun dm-js2-init-externs ()
  "Add externs apropriate to jslint mode for the file."
  (save-excursion
    (when (re-search-forward "node:true" 1024 t)
      (dm-add-externs js2-node-externs))))

(add-hook 'js2-init-hook #'dm-js2-init-externs)

(setq-default js2-strict-inconsistent-return-warning nil
              js2-strict-trailing-comma-warning nil)

(provide 'dm-javascript)
;;; dm-javascript.el ends here

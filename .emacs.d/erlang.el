(when (eq system-type 'darwin)
  (when (file-exists-p "/usr/local/lib/erlang")
    (setq e-path "/usr/local/lib/erlang"
	  load-path (cons (concat e-path "/lib/tools-2.7/emacs/") load-path)
	  erlang-root-dir e-path
	  exec-path (cons (concat e-path "/bin") exec-path))
    (require 'erlang-start)))

(defun my-erlang-mode-hook ()
  (local-set-key [?\M-q] 'execute-extended-command)
  (local-set-key [?\M-x] 'erlang-fill-paragraph))

(add-hook 'erlang-mode-hook 'my-erlang-mode-hook)

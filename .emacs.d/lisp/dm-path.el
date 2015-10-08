(when (eq system-type 'darwin)
  (require 'exec-path-from-shell)
  (add-to-list 'exec-path-from-shell-variables "EMAIL")
  (exec-path-from-shell-initialize))

;;
;; Stuff related to all programming activities (version control, compilation etc)
;;

(setq compilation-ask-about-save nil
      vc-follow-symlinks t
      cvs-auto-remove-directories nil)

(delete 'Mtn vc-handled-backends)

(setq-default indent-tabs-mode nil
              sh-basic-offset 2)

(which-function-mode t)

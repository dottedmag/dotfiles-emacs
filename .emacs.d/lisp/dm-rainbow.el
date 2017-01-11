;;; dm-rainbow -- settings for rainbow delimiters

;;; Commentary:

;;; Code:

(require 'rainbow-delimiters)

(defun dm/set-rainbow-colors ()
  "Set my lovely rainbow colors."
  (let ((colors ["black" "red2" "dark blue" "DarkOrange2" "cyan2"
                 "yellow3" "magenta" "lime green" "maroon"]))
    (dotimes (i (length colors))
      (face-spec-set
       (intern (format "rainbow-delimiters-depth-%d-face" (1+ i)))
       `((t :foreground ,(aref colors i)))
       'face-defface-spec)))
  (face-spec-set 'rainbow-delimiters-unmatched-face
                 '((t :foreground "red4" :background "OrangeRed1"))
                 'face-defface-spec)
  (face-spec-set 'rainbow-delimiters-mismatched-face
                 '((t :foreground "red4" :background "OrangeRed1"))
                 'face-defface-spec))

(dm/set-rainbow-colors)

(provide 'dm-rainbow)
;;; dm-rainbow.el ends here

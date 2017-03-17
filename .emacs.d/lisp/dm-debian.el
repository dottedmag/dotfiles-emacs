;;; dm-debian -- Configuration for Debian development

;;; Commentary:

;;; Code:

(require 'dm-el-get)

(dm-el-get 'debian-changelog-mode)

(require 'debian-changelog-mode)

(setq debian-changelog-full-name "Mikhail Gusarov")
(setq debian-changelog-mailing-address "dottedmag@debian.org")

(provide 'dm-debian)
;;; dm-debian.el ends here

;;; local-settings.el --- description -*- lexical-binding: t; -*-

;;; Commentary:
;;; local settings for export

;;; Code:

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(setq package-user-dir "~/.emacs-configs/doom-emacs/.local/packages/elpa")
(package-initialize)

(provide 'local-settings)
;;; local-settings.el ends here

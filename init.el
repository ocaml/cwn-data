;;; init.el --- description -*- lexical-binding: t; -*-

;;; Commentary:
;;; export the CWN to html

;;; Code:

(add-to-list 'load-path (file-name-directory load-file-name))

(require 'local-settings)

(require 'org)
(require 'ox-html)

(setq org-html-postamble nil)
(setq org-export-headline-levels 5)

(defun my-code-filter-replace-pipes (text backend info)
  (if (org-export-derived-backend-p backend 'html)
      (replace-regexp-in-string "\\\\vert" "&vert;" text)
    (when (org-export-derived-backend-p backend 'ascii)
      (replace-regexp-in-string "\\\\vert" "|" text))))

(add-to-list 'org-export-filter-code-functions 'my-code-filter-replace-pipes)

(provide 'init)
;;; init.el ends here

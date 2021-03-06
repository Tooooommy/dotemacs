;; @see https://github.com/jrblevin/markdown-mode
;; @from centuar-emacs
(use-package markdown-mode
  :ensure t
  :defer 3
  :hook ((markdown-mode . flyspell-mode)
         (markdown-mode . auto-fill-mode)
         (markdown-mode . flycheck-enable-markdownlint))
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init
  (setq markdown-command "multimarkdown"))

;; @see https://github.com/ardumont/markdown-toc
(use-package markdown-toc
  :ensure t
  :defer 3
  :after markdown-mode
  :bind (:map markdown-mode-command-map
         ("r" . markdown-toc-generate-or-refresh-toc)))


(provide 'init-markdown)
;;; init-markdown ends here

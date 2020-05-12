;; @see https://github.com/Silex/docker.el
(use-package docker
  :ensure t)

;; @see https://github.com/spotify/dockerfile-mode
(use-package dockerfile-mode
  :ensure t
  :mode ("Dockerfile\\'" . dockerfile-mode)
  :config (setq dockerfile-mode-command "docker"))



(provide 'init-docker)
;;; init-docker.el
(setq-default buffer-file-coding-system 'utf-8-unix)
(prefer-coding-system 'utf-8)

(add-hook 'dired-mode-hook 'auto-revert-mode)
(add-hook 'kill-emacs-query-functions
	  (lambda () (y-or-n-p "Do you really want to exit emacs?"))
	  'append)

(setq backup-directory-alist '(("." . "~/.emacs.d/.saves")))
(setq backup-by-copying t)
(setq delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

(setq create-lockfiles nil)

(use-package multiple-cursors
  :ensure t
  :config
  :bind (("M-SPC" . set-rectangular-region-anchor)
	 ("C-S-c C-S-c" . mc/edit-lines)
	 ("C->" . mc/mark-next-like-this)
	 ("C-:" . mc/skip-to-previous-like-this)
	 ("C-;" . mc/skip-to-next-like-this)
	 ("C-S-c C-<" . mc/mark-all-like-this)))

;(use-package hydra
;  :ensure t)

;(use-package emms
;  :ensure t
;  :config
;  (setq emms-show-format "Playing: %s")
;  (setq emms-source-file-default-directory "~/LeMusic")
;  (emms-all)
;  (emms-default-players))


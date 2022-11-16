;; speeds up emacs startup
(setq gc-cons-threshold most-positive-fixnum)
(add-hook 'emacs-startup-hook
	  (lambda ()
	    (setq gc-cons-threshold (expt 2 23))))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;;; requires
(package-install 'use-package)

(use-package doom-themes
  :ensure t
  :config
  (setq doom-themes-enable-bold t)
  (setq doom-themes-enable-italic nil)
  (load-theme 'doom-one t))

(use-package ansi-color
  :init
  (defun colorize-compilation-buffer ()
    (let ((inhibit-read-only t))
      (ansi-color-apply-on-region (point-min) (point-max))))
  :hook
  (compilation-filter . colorize-compilation-buffer))

(use-package ido
  :ensure t
  :config
  (setq ido-enable-flex-matching t)
  (setq ido-everywhere t)
  (ido-mode t))

(use-package smex
  :ensure t
  :bind ("M-x" . smex)
  :config (smex-initialize))

(use-package paredit
  :ensure t
  :hook
  (emacs-lisp-mode . enable-paredit-mode)
  (lisp-mode . enable-paredit-mode)
  (scheme-mode . enable-paredit-mode)
  (eval-expression-minibuffer-setup . enable-paredit-mode))

(use-package hydra
  :ensure t)

(use-package projectile
  :ensure t
  :bind-keymap ("C-c p" . projectile-command-map)
  :config (projectile-mode t))

(use-package magit
  :ensure t)

(use-package company
  :ensure t
  :config
  (global-company-mode)
  (define-key company-active-map (kbd "<return>") nil)
  (define-key company-active-map (kbd "RET") nil)
  (define-key company-active-map (kbd "C-SPC") #'company-complete-selection)
  (setq company-tooltip-limit 5)
  (setq company-tooltip-align-annotations t))

(use-package company-box
  :ensure t
  :hook (company-mode . company-box-mode))

(use-package lsp-mode
  :ensure t
  :init
  (setq lsp-keymap-prefix "C-c 1")
  (setq lsp-headerline-breadcrumb-enable nil)
  (setq lsp-lens-enable nil)
  (setq lsp-diagnostics-provider :none)
  :hook
  (python-mode . lsp)
  (rust-mode . lsp)
  (typescript-mode . lsp)
  (go-mode . lsp)
  :commands lsp)

(use-package ivy
  :ensure t
  :config
  (ivy-mode)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t))

(use-package editorconfig
  :ensure t
  :config (editorconfig-mode t))

(use-package emojify
  :ensure t
  :hook (after-init . global-emojify-mode)
  :config
  (when (member "Noto Color Emoji" (font-family-list))
    (set-fontset-font t 'symbol (font-spec :family "Noto Color Emoji") nil 'prepend))
  (setq emojify-display-style 'unicode)
  (setq emojify-emoji-styles '(unicode)))

;; lang support
(use-package rust-mode :ensure t)
(use-package dockerfile-mode :ensure t)
(use-package typescript-mode :ensure t)
(use-package lua-mode :ensure t)
(use-package markdown-mode :ensure t)
(use-package tuareg :ensure t) ;; ocaml mode
(use-package go-mode :ensure t)
;;; end requires

;;; primary settings
(setq inhibit-startup-message t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(setq split-width-threshold nil)
(setq-default buffer-file-coding-system 'utf-8-unix)
(prefer-coding-system 'utf-8)
(setq use-short-answers t)

(column-number-mode 1)
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)

(show-paren-mode 1)

(set-frame-font "Iosevka 14" nil t)

;; shit for windows (i hate this platform)
(if (eq system-type 'windows-nt)
  (progn
    (add-hook 'emacs-startup-hook 'toggle-frame-maximized)
    (setq explicit-shell-file-name "C:/Program Files/Git/bin/bash.exe")
    (setq shell-file-name explicit-shell-file-name)
    (add-to-list 'exec-path "C:/Program Files/Git/bin")
    (setq image-dired-external-viewer "C:/Program Files/nomacs/bin/nomacs.exe")
    (with-eval-after-load 'dired
      (define-key dired-mode-map (kbd "C-<return>") 'image-dired-dired-display-external)))
  nil)

;;; adding some hooks
(add-hook 'dired-mode-hook 'auto-revert-mode)
(add-hook 'kill-emacs-query-functions
	  (lambda () (y-or-n-p "Do you really want to exit emacs?"))
	  'append)

;;; settings up styles for certain languages
(setq tab-width 8)

(setq indent-tabs-mode nil)
(setq c-default-style "linux"
      c-basic-offset 8)

;;; setting up backups to be in the certain directory
(setq backup-directory-alist '(("." . "~/.emacs.d/.saves")))
(setq backup-by-copying t)
(setq delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

(setq create-lockfiles nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(go-mode doom-themes company-box lsp-mode hydra ivy paredit tuareg markdown-mode lua-mode typescript-mode emojify use-package dockerfile-mode rust-mode editorconfig projectile magit smex russian-holidays org inkpot-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

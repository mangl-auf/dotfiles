(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
; (package-refresh-contents)

;;; requires
;; require use-package
(eval-when-compile
  (require 'use-package))
;; require smex
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
;; requrie projectile
(require 'projectile)
(projectile-mode 1)
(global-set-key (kbd "C-c p") 'projectile-command-map)
;; require editorconfig
(require 'editorconfig)
(editorconfig-mode 1)
;; require rust-mode
(require 'rust-mode)
;; require dockerfile-mode
(require 'dockerfile-mode)
;; require emojify
(use-package emojify
  :hook (after-init . global-emojify-mode))

;;; primary settings
(setq inhibit-startup-message t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(setq split-width-threshold nil)
(setq-default buffer-file-coding-system 'utf-8-unix)

(global-display-line-numbers-mode 1)
(column-number-mode 1)

(show-paren-mode 1)

(load-theme 'ayu-grey t)
(set-frame-font "Ubuntu Mono 20" nil t)

(prefer-coding-system 'utf-8)

(setq explicit-shell-file-name "C:/Program Files/Git/bin/bash.exe")
(setq shell-file-name explicit-shell-file-name)

;;; adding some hooks
(add-hook 'emacs-startup-hook 'toggle-frame-maximized)
(add-hook 'dired-mode-hook 'auto-revert-mode)

;;; settings up styles for certain languages
(setq tab-width 8)

(setq indent-tabs-mode nil)
(setq c-default-style "linux"
      c-basic-offset 8)
(add-to-list 'exec-path "C:/Program Files/Git/bin")

(setq image-dired-external-viewer "C:/Program Files/nomacs/bin/nomacs.exe")
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "C-<return>") 'image-dired-dired-display-external))

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
   '(emojify use-package dockerfile-mode rust-mode editorconfig projectile magit smex ayu-theme russian-holidays org inkpot-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

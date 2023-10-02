(use-package rust-mode :ensure t)
(use-package dockerfile-mode :ensure t)
(use-package typescript-mode :ensure t)
(use-package lua-mode :ensure t)
(use-package markdown-mode :ensure t)
(use-package go-mode :ensure t)
(use-package git-modes :ensure t)
(use-package yaml-mode :ensure t)
(use-package meson-mode :ensure t)
(use-package solidity-mode :ensure t)
(use-package svelte-mode :ensure t)

(use-package editorconfig
  :ensure t
  :config (editorconfig-mode t))

;; (use-package lsp-mode
;;   :ensure t
;;   :init
;;   (setq lsp-keymap-prefix "C-c 1")
;;   (setq lsp-headerline-breadcrumb-enable nil)
;;   (setq lsp-lens-enable nil)
;;   (setq lsp-diagnostics-provider :none)
;;   (setq lsp-gopls-server-path "~/go/bin/gopls")
;;   (setq lsp-pylsp-server-path "~/.local/bin/pylsp")
;;   :hook
;;   (python-mode	   . lsp)
;;   (rust-mode	   . lsp)
;;   (typescript-mode . lsp)
;;   (go-mode	   . lsp)
;;   (clojure-mode	   . lsp)
;;   (yaml-mode	   . lsp)
;;   :commands lsp)

(use-package eglot
  :ensure t
  :hook
  (python-mode . eglot)
  (rust-mode . eglot)
  (typescript-mode . eglot)
  (go-mode . eglot))

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

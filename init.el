(setq gc-cons-threshold most-positive-fixnum)
(add-hook 'emacs-startup-hook
	  (lambda ()
	    (setq gc-cons-threshold (expt 2 23))))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(package-install 'use-package)

(when (not package-archive-contents)
  (package-refresh-contents))

(load "~/.emacs.d/emacs/appearance.el")
(load "~/.emacs.d/emacs/latex.el")
(load "~/.emacs.d/emacs/org.el")
(load "~/.emacs.d/emacs/languages.el")
(load "~/.emacs.d/emacs/lisp.el")
(load "~/.emacs.d/emacs/utils.el")
(load "~/.emacs.d/emacs/win-related.el")

;; (use-package smex
;;   :ensure t
;;   :bind ("M-x" . smex)
;;   :config (smex-initialize))

(use-package projectile
  :ensure t
  :bind-keymap ("C-c p" . projectile-command-map)
  :config (projectile-mode t))

(use-package magit
  :ensure t
  :bind ("C-c C-g" . magit))

(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1))

(use-package ivy
  :ensure t
  :config
  (ivy-mode)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("9cd57dd6d61cdf4f6aef3102c4cc2cfc04f5884d4f40b2c90a866c9b6267f2b3" "d516f1e3e5504c26b1123caa311476dc66d26d379539d12f9f4ed51f10629df3" "11cc65061e0a5410d6489af42f1d0f0478dbd181a9660f81a692ddc5f948bf34" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "3e200d49451ec4b8baa068c989e7fba2a97646091fd555eca0ee5a1386d56077" "00445e6f15d31e9afaa23ed0d765850e9cd5e929be5e8e63b114a3346236c44c" "4c56af497ddf0e30f65a7232a8ee21b3d62a8c332c6b268c81e9ea99b11da0d3" "3c7a784b90f7abebb213869a21e84da462c26a1fda7e5bd0ffebf6ba12dbd041" "4b026ac68a1aa4d1a91879b64f54c2490b4ecad8b64de5b1865bca0addd053d9" "611ef0918b8b413badb8055089b5499c1d4ac20f1861efba8f3bfcb36ad0a448" "88cb0f9c0c11dbb4c26a628d35eb9239d1cf580cfd28e332e654e7f58b4e721b" "4363ac3323e57147141341a629a19f1398ea4c0b25c79a6661f20ffc44fdd2cb" "4c7228157ba3a48c288ad8ef83c490b94cb29ef01236205e360c2c4db200bb18" "636b135e4b7c86ac41375da39ade929e2bd6439de8901f53f88fde7dd5ac3561" default))
 '(package-selected-packages
   '(all-the-icons neotree svelte-mode solarized-theme kaolin-themes modus-themes night-owl-theme org-roam-ui slime solidity-mode org-roam org-appear org-bullets meson-mode yasnippet restclient emms-setup emms cmake-mode auctex-latexmk tex auctex pdftools pdf-tools multiple-cursors git-modes mood-line go-mode company-box lsp-mode hydra ivy paredit markdown-mode lua-mode typescript-mode emojify use-package dockerfile-mode rust-mode editorconfig projectile magit smex russian-holidays org inkpot-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

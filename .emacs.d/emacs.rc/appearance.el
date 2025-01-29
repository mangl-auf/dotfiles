(setq inhibit-startup-message t)
(setq split-width-threshold nil)

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(show-paren-mode 1)

(column-number-mode 1)
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)
(pixel-scroll-precision-mode)

(setq use-short-answers t)

(if (daemonp)
  (add-to-list 'default-frame-alist '(font . "JetBrains Mono 14"))
  (set-frame-font "JetBrains Mono 14" nil t))

(setq tab-width 8)

(setq indent-tabs-mode nil)
(setq c-default-style "linux"
      c-basic-offset 8)

(c-set-offset 'innamespace 0)

(use-package kaolin-themes
  :ensure t
  :config
  (load-theme 'kaolin-aurora t))

(use-package mood-line
  :ensure t
  :config
  (mood-line-mode))

(use-package ansi-color
  :init
  (defun colorize-compilation-buffer ()
    (let ((inhibit-read-only t))
      (ansi-color-apply-on-region (point-min) (point-max))))
  :hook
  (compilation-filter . colorize-compilation-buffer))

(use-package emojify
  :ensure t
  :hook (after-init . global-emojify-mode)
  :config
  (when (member "Noto Color Emoji" (font-family-list))
    (set-fontset-font t 'symbol (font-spec :family "Noto Color Emoji") nil 'prepend))
  (setq emojify-display-style 'unicode)
  (setq emojify-emoji-styles '(unicode)))

(use-package all-the-icons
  :ensure t
  :if (display-graphic-p))

(use-package neotree
  :ensure t
  :config
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  :bind
  (("<f8>" . 'neotree-toggle)))

(use-package tex
  :ensure auctex)

(use-package auctex-latexmk
  :ensure t)

(use-package pdf-tools
  :ensure t
  :config
  (pdf-tools-install)
  (setq pdf-view-display-size 'fit-width)
  (add-hook 'TeX-after-compilation-finished-functions #'TeX-revert-document-buffer)
  (add-hook 'pdf-view-mode-hook (lambda ()
				  (linum-mode -1)
				  (display-line-numbers-mode -1))))
 

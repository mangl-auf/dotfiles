(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

(use-package org-appear
  :ensure t
  :config
  (add-hook 'org-mode-hook 'org-appear-mode)
  (setq org-appear-autolinks t)
  (setq org-appear-autokeywords t))

(use-package org-roam
  :ensure t)

(use-package org-roam-ui
  :ensure t
  :config
  (setq org-roam-ui-sync-theme t)
  (setq org-roam-ui-follow t)
  (setq org-roam-ui-update-on-save t)
  (setq org-roam-ui-open-on-start t))

(setq-default org-display-custom-times t)
(setq org-time-stamp-custom-formats '("<%a %d.%m.%Y>" . "<%a %d.%m.%Y %H:%M>"))
(setq org-hide-emphasis-markers t)
(setq org-hidden-keywords '(title author date email))
(setq org-startup-folded t)

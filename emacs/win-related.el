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

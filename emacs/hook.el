;; tty
(add-hook 'tty-setup-hook (lambda ()
(set-face-background 'default "unspecified-bg")
(set-face-background 'line-number "unspecified-bg")
(set-face-background 'line-number-current-line "unspecified-bg")
(set-face-background 'region "unspecified-bg")))

(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook 'hs-minor-mode)
(add-hook 'prog-mode-hook 'company-mode)

(add-hook 'org-mode-hook 'company-mode)
(add-hook 'org-mode-hook 'org-modern-mode)

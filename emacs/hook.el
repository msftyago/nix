;; tty
(add-hook 'tty-setup-hook (lambda ()
(set-face-background 'default "unspecified-bg")
(set-face-background 'line-number "unspecified-bg")
(set-face-background 'line-number-current-line "unspecified-bg")
(set-face-background 'region "unspecified-bg")))

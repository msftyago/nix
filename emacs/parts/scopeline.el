;; Scopeline
(use-package scopeline
  :ensure t
  :config (add-hook 'prog-mode-hook #'scopeline-mode))
;;(use-package scopeline 
;;:ensure t 
;;:delight 
;;:hook (rust-ts-mode . scopeline-mode))

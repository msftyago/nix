;; Treemacs
(require 'treemacs)
(global-set-key [f8] 'treemacs)
(use-package treemacs
:custom (treemacs-position 'left)
:bind ("C-c t" . treemacs))

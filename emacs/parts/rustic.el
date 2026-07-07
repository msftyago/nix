;; Rustic
(use-package rustic 
  :ensure t
;; :config (setq rustic-rustfmt-args "+nightly")
;; :config (setq rustic-rustfmt-config-alist '((hard_tabs . t) (skip_children . nil)))
:config (setq rustic-format-on-save t) 
:custom (rustic-cargo-use-last-stored-arguments t)
)

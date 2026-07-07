;;
;; ←-------------- DEFAULT -------------------→
;;

(load-file "/home/yago/nix/emacs/parts/xclip.el")
(load-file "/home/yago/nix/emacs/parts/corfu.el")
(load-file "/home/yago/nix/emacs/parts/rustic.el")
(load-file "/home/yago/nix/emacs/parts/dabbrev.el")
(load-file "/home/yago/nix/emacs/parts/treemacs.el")
(load-file "/home/yago/nix/emacs/parts/scopeline.el")

(use-package emacs
:init
(global-set-key [f7] 'company-clang))

;; Racer {via company}
(require 'company-racer)
(with-eval-after-load 'company (add-to-list 'company-backends 'company-racer))

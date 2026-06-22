;;
;;  ___ __  __   _   ___ ___                __ _
;; | __|  \/  | /_\ / __/ __|  __ ___ _ _  / _(_)__ _
;; | _|| |\/| |/ _ \ (__\__ \ / _/ _ \ ' \|  _| / _` |
;; |___|_|  |_/_/ \_\___|___/ \__\___/_||_|_| |_\__, |
;;                                              |___/
;;
;; https://github.com/msftyago/nix/nixos/parts/.emacs
;;; -*- lexical-binding: t -*-

(setq inhibit-startup-screen t)
(load-file "/home/yago/nix/emacs/hi.el")
(load-file "/home/yago/nix/emacs/themes/emperor.el")
(load-file "/home/yago/nix/emacs/hook.el")
(load-file "/home/yago/nix/emacs/bind.el")
(load-file "/home/yago/nix/emacs/parts/default.el")

;; Make frames transparent (use pkgs.emacs-gtk)
;; (set-frame-parameter (selected-frame) 'alpha-background 93)
;; (add-to-list 'default-frame-alist '(alpha-background . 93))
;; (set-frame-parameter (selected-frame) 'fullscreen 'maximized)
;; (add-to-list 'default-frame-alist '(fullscreen . maximized)))

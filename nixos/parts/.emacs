(require 'use-package)
;; This ensures that packages are downloaded if they are missing
(setq use-package-always-ensure t)

;; CORFU
(use-package corfu
  :custom
  (text-mode-ispell-word-completion nil))
;; Enable auto completion, configure delay, trigger and quitting
(advice-add 'eglot-completion-at-point :around #'cape-wrap-buster)
(setq corfu-auto t
      corfu-auto-delay 0.2
      corfu-auto-trigger "." ;; Custom trigger characters
      corfu-quit-no-match 'separator) ;; or t

(use-package dabbrev
  ;; Swap M-/ and C-M-/
  :bind (("M-/" . dabbrev-completion)
         ("C-M-/" . dabbrev-expand))
  :config
  (add-to-list 'dabbrev-ignored-buffer-regexps "\\` ")
  (add-to-list 'dabbrev-ignored-buffer-modes 'authinfo-mode)
  (add-to-list 'dabbrev-ignored-buffer-modes 'doc-view-mode)
  (add-to-list 'dabbrev-ignored-buffer-modes 'pdf-view-mode)
  (add-to-list 'dabbrev-ignored-buffer-modes 'tags-table-mode))

;; TREEMACS
(use-package treemacs
  :custom
  (treemacs-position 'left) ;; This is the magic line
  :bind
  ("C-c t" . treemacs)
  ;;  :init ;; enables treemacs at startup
  ;;  (treemacs))
)

(use-package emacs
  :init
  (global-set-key (kbd "C-=") 'text-scale-increase)
  (global-set-key (kbd "C--") 'text-scale-decrease)
)

;;; -*- lexical-binding: t -*-
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode t)
 '(custom-enabled-themes '(modus-vivendi))
 '(custom-safe-themes
   '("c8078cccd38e52c3f94822b0b2bbe83886dea993536acfde2db019f46a193503"
     "d2c76098def8b2b10b45d2092c86ca9c8b95d58fabbc8850d28899181d8f6581"
     "6dcf1ca4c7432773084b9d52649ee5eb2c663131c4c06859f648dea98d9acb3e"
     "7e98dc1aa7f5db0557691da690c38d55e83ddd33c6d268205d66e430d57fb982"
     default))
 '(display-line-numbers t)
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(aggressive-indent company corfu ef-themes markdown-mode
		       math-symbol-lists modus-themes nix-mode org
		       org-journal org-modern org-superstar pacmacs
		       rust-mode ztree))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#080808" :foreground "#ffffff" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 102 :width normal :family "DejaVu Sans Mono"))))
 '(compilation-line-number ((t nil)))
 '(corfu-bar ((t (:background "white"))))
 '(corfu-border ((t (:background "dark red"))))
 '(corfu-default ((t (:inherit modus-themes-fixed-pitch :background "black"))))
 '(cursor ((t (:background "red"))))
 '(fringe ((t (:background "#080808" :foreground "#ffffff"))))
 '(line-number ((t (:inherit default :background "#080808" :foreground "gray22"))))
 '(line-number-current-line ((t (:inherit (bold default) :background "#080808" :foreground "red"))))
 '(mode-line ((t (:inherit modus-themes-ui-variable-pitch :background "black" :foreground "#ffffff" :box (:line-width (1 . 1) :color "#959595")))))
 '(mode-line-active ((t (:inherit modus-themes-ui-variable-pitch :background "dark red" :foreground "white" :box (:line-width (1 . 1) :color "dark red"))))))

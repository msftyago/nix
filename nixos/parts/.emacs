(setq inhibit-startup-screen t)
;;; -*- lexical-binding: t -*-

;;  ___ __  __   _   ___ ___                __ _
;; | __|  \/  | /_\ / __/ __|  __ ___ _ _  / _(_)__ _
;; | _|| |\/| |/ _ \ (__\__ \ / _/ _ \ ' \|  _| / _` |
;; |___|_|  |_/_/ \_\___|___/ \__\___/_||_|_| |_\__, |
;;                                              |___/
;;
;; https://github.com/msftyago/nix/nixos/parts/.emacs

;; tty
(add-hook 'tty-setup-hook (lambda ()
(set-face-background 'default "unspecified-bg")
(set-face-background 'line-number "unspecified-bg")
(set-face-background 'line-number-current-line "unspecified-bg")
(set-face-background 'region "unspecified-bg")))

;; Custom preferences
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(battery-mode-line-format "(%b%p%%)")
 '(blink-cursor-blinks 1)
 '(blink-cursor-delay 0)
 '(blink-cursor-interval 0.2)
 '(blink-cursor-mode t)
 '(custom-enabled-themes '(modus-vivendi))
 '(custom-safe-themes
   '("c8078cccd38e52c3f94822b0b2bbe83886dea993536acfde2db019f46a193503"
     "d2c76098def8b2b10b45d2092c86ca9c8b95d58fabbc8850d28899181d8f6581"
     "6dcf1ca4c7432773084b9d52649ee5eb2c663131c4c06859f648dea98d9acb3e"
     "7e98dc1aa7f5db0557691da690c38d55e83ddd33c6d268205d66e430d57fb982"
     default))
 '(display-battery-mode t)
 '(display-line-numbers t)
 '(fancy-splash-image nil)
 '(menu-bar-mode nil)
 '(mode-line-format
   '("%e" mode-line-front-space
     (:propertize
      ("" mode-line-mule-info mode-line-client mode-line-modified
       mode-line-remote mode-line-window-dedicated)
      display (min-width (6.0)))
     mode-line-frame-identification mode-line-buffer-identification
     "   " mode-line-position
     (project-mode-line project-mode-line-format) (vc-mode vc-mode)
     "  " mode-line-modes mode-line-misc-info))
 '(mode-line-right-align-edge 'right-fringe)
 '(package-selected-packages nil)
 '(package-vc-selected-packages
   '((pgmacs :vc-backend Git :url "https://github.com/emarsden/pgmacs")
     (pg :vc-backend Git :url "https://github.com/emarsden/pg-el")))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))

(use-package emacs
:init (global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key [f8] 'neotree-toggle)
(global-set-key [f7] 'company-clang))

;; Make frames transparent (use pkgs.emacs-gtk)
;; (set-frame-parameter (selected-frame) 'alpha-background 93)
;; (add-to-list 'default-frame-alist '(alpha-background . 93))
;; (set-frame-parameter (selected-frame) 'fullscreen 'maximized)
;; (add-to-list 'default-frame-alist '(fullscreen . maximized)))

;; Custom Faces (M-x customize)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#000000" :foreground "#ffffff" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight regular :height 105 :width normal :foundry "JB" :family "Fira Code"))))
 '(aw-mode-line-face ((t (:inherit modus-themes-bold :underline nil))))
 '(button ((t (:foreground "yellow" :underline "yellow"))))
 '(compilation-line-number ((t nil)))
 '(corfu-bar ((t (:background "white"))))
 '(corfu-border ((t (:background "dark red"))))
 '(corfu-default ((t (:inherit modus-themes-fixed-pitch :background "black"))))
 '(cursor ((t (:background "red"))))
 '(custom-button-mouse ((t (:inherit variable-pitch :background "dark magenta" :foreground "#ffffff" :box (:line-width (1 . 1) :color "#646464" :style released-button)))))
 '(custom-link ((t (:inherit link))))
 '(custom-state ((t (:foreground "green yellow"))))
 '(custom-visibility ((t (:inherit link :foreground "yellow" :underline nil :height 0.8))))
 '(fringe ((t (:background "#080808" :foreground "#ffffff"))))
 '(lazy-highlight ((t (:background "DarkOrange1" :foreground "deep pink"))))
 '(line-number ((t (:inherit default :background "black" :foreground "gray22"))))
 '(line-number-current-line ((t (:inherit (bold default) :background "black" :foreground "red"))))
 '(link ((t (:foreground "yellow" :underline "yellow"))))
 '(link-visited ((t (:foreground "#feacd0" :underline "blue"))))
 '(mode-line ((t (:inherit modus-themes-ui-variable-pitch :background "black" :foreground "#ffffff" :box (:line-width (1 . 1) :color "#959595")))))
 '(mode-line-active ((t (:inherit modus-themes-ui-variable-pitch :background "dark red" :foreground "white" :box (:line-width (1 . 1) :color "dark red")))))
 '(mode-line-highlight ((t (:background "#45605e" :foreground "#ffffff" :box (:line-width (1 . 1) :color "#ffffff")))))
 '(tty-menu-disabled-face ((t (:background "#303030" :foreground "#989898"))))
 '(tty-menu-enabled-face ((t (:inherit bold :background "#303030" :foreground "#ffffff"))))
 '(tty-menu-selected-face ((t (:background "#1640b0" :foreground "#ffffff"))))
 '(window-divider ((t (:foreground "080808"))))
 '(window-divider-first-pixel ((t nil))))
(require 'use-package)
(setq use-package-always-ensure t)

;; Corfu
;;(use-package corfu
;;  :custom
;;  (text-mode-ispell-word-completion nil))
;;(advice-add 'eglot-completion-at-point :around #'cape-wrap-buster)
;;(setq corfu-auto t
;;      corfu-auto-delay 0.2
;;      corfu-auto-trigger "."
;;      corfu-quit-no-match 'separator) ;; or use t

;; Scopeline
;; (use-package scopeline
;;  :ensure t
;;  :delight
;;  :hook (rust-ts-mode . scopeline-mode))

;; Custom startup
(add-hook 'emacs-startup-hook
  (lambda ()
    (let* ((buffer-hello (get-buffer-create "::::. ::: :::::...::")))
      (switch-to-buffer buffer-hello)
      (insert "")
      (toggle-truncate-lines)
      ;;(insert-image-file "~/Pictures/Fav pics/C229_825.png")
      (delete-other-windows)
      (message "burnt sage in my lungs where i find you\nhiding in a drawer like candy")
      (buffer-modified-p)
      (read-only-mode))))

;; Dabbrev
(use-package dabbrev
  ;; Swap M-/ and C-M-/
  :bind (("M-/" . dabbrev-completion)
	 ("C-M-/" . dabbrev-expand))
  :config (add-to-list 'dabbrev-ignored-buffer-regexps "\\` ")
  (add-to-list 'dabbrev-ignored-buffer-modes 'authinfo-mode)
  (add-to-list 'dabbrev-ignored-buffer-modes 'doc-view-mode)
  (add-to-list 'dabbrev-ignored-buffer-modes 'pdf-view-mode)
  (add-to-list 'dabbrev-ignored-buffer-modes 'tags-table-mode))


;; Racer {via company}
(require 'company-racer)

(with-eval-after-load 'company (add-to-list 'company-backends 'company-racer))

;; NeoTree
;; (add-to-list 'load-path "/path/to/directory")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; Treemacs
(use-package treemacs
:custom (treemacs-position 'left)
:bind ("C-c t" . treemacs)
  ;;  :init  ;; enables treemacs at startup
  ;;  (treemacs))
)

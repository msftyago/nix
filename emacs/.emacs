;;
;;  ___ __  __   _   ___ ___                __ _
;; | __|  \/  | /_\ / __/ __|  __ ___ _ _  / _(_)__ _
;; | _|| |\/| |/ _ \ (__\__ \ / _/ _ \ ' \|  _| / _` |
;; |___|_|  |_/_/ \_\___|___/ \__\___/_||_|_| |_\__, |
;;                                              |___/
;;
;; https://github.com/msftyago/nix/nixos/parts/.emacs

;;; -*- lexical-binding: t -*-

;; The default is 800 kilobytes.  Measured in bytes.
(setq gc-cons-threshold (* 50 1000 1000))

;; Profile emacs startup
(add-hook 'emacs-startup-hook
          (lambda ()
            (message "*** Emacs loaded in %s with %d garbage collections."
                     (format "%.2f seconds"
                             (float-time
                              (time-subtract after-init-time before-init-time)))
                     gcs-done)))

(use-package all-the-icons
  :if (display-graphic-p))

;; (setq inhibit-startup-screen t)
;; (load-file "/home/yago/nix/emacs/themes/emperor.el") ;; Specify the theme

;; ;; Custom startup
(add-hook 'emacs-startup-hook
	  (lambda () 
	    (let* ((buffer-hello (get-buffer-create "GNU Emacs"))) 
	      (switch-to-buffer buffer-hello)
	      (insert "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
	      (insert "    ")
	      ;; (disable-command )
	      (insert "\n")
	      (center-paragraph)
	      (toggle-truncate-lines)
	      (delete-other-windows) 
	      (message "There is only time. A circular pattern, a hex I abide ") 
	      (buffer-modified-p) 
	      (read-only-mode))))

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


;; Bindings
(use-package emacs
:init (global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease))

(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank))
(global-set-key (kbd "C-^") 'duplicate-line)

(use-package wakatime-mode
  :ensure t
  :config
  (global-wakatime-mode 1))

(require 'direnv)
(global-set-key [f8] 'direnv-allow)

;; Avy
(require 'avy)
(use-package avy
:bind ("C-x :" . avy-goto-line))

;; Make frames transparent (use pkgs.emacs-gtk)
;; (set-frame-parameter (selected-frame) 'alpha-background 93)
;; (add-to-list 'default-frame-alist '(alpha-background . 93))
;; (set-frame-parameter (selected-frame) 'fullscreen 'maximized)
;; (add-to-list 'default-frame-alist '(fullscreen . maximized)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(battery-mode-line-format " %b%p%%")
 '(blink-cursor-blinks 0.1)
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
 '(newsticker-url-list '(("meow" "https://meow.uz/rss.xml" nil 86400 nil)))
 '(package-selected-packages
   '(aggressive-indent all-the-icons anzu auto-org-md blamer
		       company-racer corfu direnv ef-themes
		       elisp-autofmt elisp-def elisp-format elisp-refs
		       elpaca flycheck flymd grip-mode helm kkp
		       lsp-treemacs magit math-symbol-lists meow
		       mermaid-mode multiple-cursors neotree nix-mode
		       org-journal org-modern org-superstar pacmacs
		       pandoc pdf-tools pgmacs quelpa
		       rainbow-delimiters rustic scopeline transwin
		       treemacs-nerd-icons treemacs-tab-bar wat-mode
		       wat-ts-mode ztree))
 '(package-vc-selected-packages
   '((pgmacs :vc-backend Git :url "https://github.com/emarsden/pgmacs")
     (pg :vc-backend Git :url "https://github.com/emarsden/pg-el")))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))

(use-package wakatime-mode
  :if (executable-find "wakatime-cli")
  :init
  (setq wakatime-api-key
        (let ((key-file "~/.secrets"))
          (when (file-exists-p key-file)
            (string-trim (with-temp-buffer
                           (insert-file-contents key-file)
                           (buffer-string))))))
  :config
  (global-wakatime-mode))

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
 '(window-divider ((t (:foreground "#080808"))))
 '(window-divider-first-pixel ((t nil))))


;; Treemacs
(require 'treemacs)
(use-package treemacs
:custom (treemacs-position 'left)
:bind ("C-c t" . treemacs))

;; Scopeline
;;(use-package scopeline 
;;:ensure t 
;;:delight 
;;:hook (rust-ts-mode . scopeline-mode))

(use-package elfeed
:ensure t)

;; data is stored in ~/.elfeed
(setq elfeed-feeds
        '(
                ;; programming
                ("https://news.ycombinator.com/rss" hacker)
                ("https://www.reddit.com/r/programming.rss" programming)
                ("https://www.reddit.com/r/emacs.rss" emacs)
                ("https://habr.com/ru/rss/all/all/?fl=ru" habr-all)
                ("https://habr.com/ru/rss/news/?fl=ru" habr-news)
                ("https://nuancesprog.ru/feed" nop)
                ("https://dev.to/feed" dev-to)
		("https://ldap.com/feed/" ldap)
		("https://meow.uz/rss.xml/" meow-uz)

                ;; hobby
                ("https://www.reddit.com/r/nasa.rss" nasa)
                ("https://habr.com/ru/rss/hub/astronomy/all/?fl=ru" habr-astronomy)
                ("https://habr.com/ru/rss/flows/popsci/all/?fl=ru" habr-popsci)

                ;; programming languages
                ;; ("https://www.reddit.com/r/javascript.rss" javascript)
                ;; ("https://www.reddit.com/r/typescript.rss" typescript)
                ("https://www.reddit.com/r/golang.rss" golang)
                ("https://www.reddit.com/r/rust.rss" rust)

                ;; Reddit
                ;; ("https://www.reddit.com/r/aws.rss" aws)
                ;; ("https://www.reddit.com/r/googlecloud.rss" googlecloud)
                ;; ("https://www.reddit.com/r/azure.rss" azure)
                ("https://www.reddit.com/r/devops.rss" devops)
                ("https://www.reddit.com/r/kubernetes.rss" kubernetes)
                ))

(setq-default elfeed-search-filter "@2-days-ago +unread")
(setq-default elfeed-search-title-max-width 100)
(setq-default elfeed-search-title-min-width 100)

;; Clipboard

(global-set-key "\C-w" 'clipboard-kill-region)
(global-set-key "\M-w" 'clipboard-kill-ring-save)
(global-set-key "\C-y" 'clipboard-yank)

;; Corfu
;;(use-package corfu
;;  :custom
;;  (text-mode-ispell-word-completion nil))
;;(advice-add 'eglot-completion-at-point :around #'cape-wrap-buster)
;;(setq corfu-auto t
;;      corfu-auto-delay 0.2
;;      corfu-auto-trigger "."
;;      corfu-quit-no-match 'separator) ;; or use t

;; Rustic
(use-package rustic 
  :ensure t
;; :config (setq rustic-rustfmt-args "+nightly")
;; :config (setq rustic-rustfmt-config-alist '((hard_tabs . t) (skip_children . nil)))
:config (setq rustic-format-on-save t) 
:custom (rustic-cargo-use-last-stored-arguments t))

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


(use-package emacs
:init
(global-set-key [f7] 'company-clang))

;; Racer {via company}
(require 'company-racer)
(with-eval-after-load 'company (add-to-list 'company-backends 'company-racer))

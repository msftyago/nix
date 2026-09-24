{
  programs.emacs = {
    enable = true;
    extraPackages = epkgs: with epkgs; [
      ah
      avy
      kkp
      meow
      helm
      anzu
      emms
      xclip
      cargo
      magit
      corfu
      eping
      flymd
      #racer
      direnv
      pandoc
      elfeed
      blamer
      docker
      ipcalc
      quelpa
      rustic
      #agenix
      neotree
      blacken
      nethack
      ac-html
      #enlight
      ac-clang
      ac-emoji
      treemacs
      undohist
      wat-mode
      transwin
      toml-mode
      fish-mode
      scopeline
      grip-mode
      pdf-tools
      #netrunner
      docker-cli
      org-modern
      nerd-icons
      lsp-docker
      #ace-window
      wat-ts-mode
      elune-theme
      dummyparens
      auto-org-md
      wat-ts-mode
      #achievements
      cabledolphin
      esmond-theme
      lsp-treemacs
      mermaid-mode
      company-racer
      elisp-autofmt
      all-the-icons
      markdown-mode
      wakatime-mode
      pretty-symbols
      #sideline-eglot
      cargo-transient
      dockerfile-mode
      pretty-sha-path
      auto-virtualenv
      readable-numbers
      multiple-cursors
      #sideline-flymake
      #sideline-flycheck
      rainbow-delimiters
      docker-compose-mode
      all-the-icons-dired
      mermaid-docker-mode
      nerd-icons-completion

      # Nix
      nixfmt
      nix-mode
      nix-buffer
      nixpkgs-fmt
      nix-ts-mode
      nix-sandbox
      nix-modeline
      org-nix-shell
      nixos-options
      pretty-sha-path

      # Treemacs
      treemacs-tab-bar
      # treemacs-nerd-icons
      #treemacs-all-the-icons

      # Lisp
      elpaca
      elisp-def
      elisp-refs
      elisp-format

      # Haskell
      lsp-haskell
      haskell-mode
      haskell-tab-indent
    ];
  };
}

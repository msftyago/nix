{
  programs.emacs = {
    enable = true;
    extraPackages = epkgs: with epkgs; [
      # Network
      #doom
      eping
      ipcalc
      nethack
      # netrunner
      cabledolphin

      avy
      kkp
      meow
      helm
      anzu
      xclip
      cargo
      magit
      corfu
      flymd
      #racer
      direnv
      pandoc
      elfeed
      blamer
      docker
      quelpa
      rustic
      #enlight
      neotree
      blacken
      treemacs
      wat-mode
      transwin
      toml-mode      
      fish-mode
      scopeline
      grip-mode
      pdf-tools
      docker-cli
      org-modern
      lsp-docker
      wat-ts-mode
      dummyparens
      auto-org-md
      wat-ts-mode
      lsp-treemacs
      mermaid-mode
      company-racer
      elisp-autofmt
      all-the-icons
      markdown-mode
      wakatime-mode
      #sideline-eglot
      cargo-transient
      dockerfile-mode
      auto-virtualenv
      multiple-cursors
      #sideline-flymake
      #sideline-flycheck
      rainbow-delimiters
      docker-compose-mode

      # Nix & NixOS
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
      treemacs-nerd-icons
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

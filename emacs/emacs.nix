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
      magit
      corfu
      flymd
      #racer
      direnv
      pandoc
      blamer
      docker
      quelpa
      rustic
      #enlight
      neotree
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
      auto-org-md
      lsp-treemacs
      mermaid-mode
      company-racer
      elisp-autofmt
      all-the-icons
      markdown-mode
      #wakatime-mode
      #sideline-eglot
      cargo-transient
      dockerfile-mode
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
      # Tree-sitter & Rust
      #rustic
      #rust-mode
      #tree-sitter
      nix-ts-mode
      #rust-ts-mode
      #graphql-ts-mode
      #tree-sitter-langs
      #markdown-ts-mode
      #tree-sitter-indent
      #treemacs-nerd-icons  
    ];
  };
}

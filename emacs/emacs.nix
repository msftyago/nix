{
  programs.emacs = {
    enable = true;
    extraPackages = epkgs: with epkgs; [
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
      fish-mode
      scopeline
      grip-mode
      pdf-tools
      docker-cli
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
      #nix-ts-mode
      #rust-ts-mode
      #graphql-ts-mode
      #tree-sitter-langs
      #markdown-ts-mode
      #tree-sitter-indent
      #treemacs-nerd-icons  
    ];
  };
}

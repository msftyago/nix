{
  programs.emacs = {
    enable = true;
    extraPackages = epkgs: with epkgs; [
      avy
      kkp
      meow
      anzu
      magit
      corfu
      #racer
      direnv
      pandoc
      blamer
      quelpa
      #rustic
      #enlight
      neotree
      treemacs
      wat-mode
      transwin
      scopeline
      grip-mode
      pdf-tools
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

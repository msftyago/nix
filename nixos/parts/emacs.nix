{  epkgs }
  programs.emacs = {
    enable = true;
    extraPackages = epkgs: with epkgs; [
      avy
      kkp
      meow
      anzu
      corfu
      #racer
      direnv
      pandoc
      blamer
      #rustic
      #enlight
      neotree
      treemacs
      transwin
      scopeline
      grip-mode
      pdf-tools
      wat-ts-mode
      auto-org-md
      company-racer
      elisp-autofmt
      all-the-icons
      markdown-mode
      #wakatime-mode
      sideline-eglot
      #sideline-flymake
      sideline-flycheck
      rainbow-delimiters

      # Tree-sitter
      tree-sitter
      nix-ts-mode
      graphql-ts-mode
      markdown-ts-mode
      tree-sitter-indent
      treemacs-nerd-icons  
    ];
  };
}

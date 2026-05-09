{
  programs.emacs = {
    enable = true;
    extraPackages = epkgs: [
      # Firefox incompatible
      #epkgs.flymd
      epkgs.corfu
      epkgs.direnv
      epkgs.pandoc
      epkgs.neotree
      epkgs.treemacs
      epkgs.transwin
      epkgs.grip-mode
      epkgs.pdf-tools
      epkgs.auto-org-md
      epkgs.elisp-autofmt
      epkgs.all-the-icons
      epkgs.markdown-mode
      epkgs.wakatime-mode
      epkgs.rainbow-delimiters
      epkgs.treemacs-nerd-icons
    ];
  };
  
  /*
  services.emacs = {
    enable = true;
    package = inputs.doom-emacs.packages.${system}.doom-emacs.override {
      doomPrivateDir = /home/yago/.emacs.d; #change it to relative path!
    };
  };
  */
}

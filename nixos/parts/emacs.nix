{
  programs.emacs = {
    enable = true;
    extraPackages = epkgs: [
      # Firefox incompatible
      #epkgs.flymd
      epkgs.corfu
      epkgs.direnv
      epkgs.neotree
      epkgs.treemacs
      epkgs.transwin
      epkgs.grip-mode
      epkgs.elisp-autofmt
      epkgs.all-the-icons
      epkgs.markdown-mode
      epkgs.wakatime-mode
      epkgs.pandoc
      epkgs.treemacs-nerd-icons
      epkgs.pdf-tools
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

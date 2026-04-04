{
  programs.emacs = {
    enable = true;
    extraPackages = epkgs: [
      # Firefox incompatible
      #epkgs.flymd
      epkgs.grip-mode
      epkgs.all-the-icons
      epkgs.corfu
      epkgs.treemacs
      epkgs.treemacs-nerd-icons
      epkgs.elisp-autofmt
      epkgs.markdown-mode
      epkgs.transwin
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

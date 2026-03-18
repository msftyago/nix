{
  programs.emacs = {
    enable = true;
    extraPackages = epkgs: [
      # Firefox incompatible
      #epkgs.flymd
      epkgs.grip-mode
      epkgs.grip-mode
      epkgs.doom
      epkgs.markdown-preview-mode
      epkgs.visual-fill-column
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

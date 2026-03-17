{
  programs.emacs = {
  enable = true;
  extraPackages = epkgs: [
    epkgs.flymd
    epkgs.doom
    epkgs.markdown-preview-mode
  ];
  };
  /*
  services.emacs = {
    enable = true;
    package = inputs.doom-emacs.packages.${system}.doom-emacs.override {
      doomPrivateDir = /home/yago/.emacs.d; #change it to relative path!
    };  
  };*/
}

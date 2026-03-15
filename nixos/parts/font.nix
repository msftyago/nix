{
  pkgs,
  ...
}: {
  fonts = {
    packages = with pkgs; [
      roboto
      work-sans
      comic-neue
      source-sans
      dejavu_fonts
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-color-emoji
      fira-code
      jetbrains-mono
      openmoji-color
      twemoji-color-font
      corefonts
      vista-fonts
      material-symbols
    ];

    enableDefaultPackages = false;

    fontconfig = {
      defaultFonts = {
        monospace = ["FiraCode Nerd Font Mono" "Noto Color Emoji"];
        sansSerif = ["SFProDisplay Nerd Font" "Noto Color Emoji"];
        serif = ["SFProDisplay Nerd Font" "Noto Color Emoji"];
        emoji = ["Noto Color Emoji"];
      };
    };
  };
}

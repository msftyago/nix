{pkgs, ...}: {
  fonts = {
    enableDefaulPackages = true;
    packages = with pkgs; [
      roboto
      liberation_ttf
      #work-sans
      #comic-neue
      #source-sans
      #dejavu_fonts

      # Noto
      #noto-fonts
      #noto-fonts-cjk-sans
      noto-fonts-color-emoji

      iosevka
      fira-sans
      fira-code
      jetbrains-mono
      googlesans-code
      #openmoji-color
      #twemoji-color-font
      #corefonts
      #vista-fonts
      #material-symbols
    ];

    fontconfig = {
      defaultFonts = {
        monospace = ["Liberation Serif" "Noto Color Emoji"];
        sansSerif = ["Liberation Serif" "Noto Color Emoji"];
        serif = ["Liberation Serif" "Noto Color Emoji"];
        emoji = ["Noto Color Emoji"];
      };
    };
  };
}

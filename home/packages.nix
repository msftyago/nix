{
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    gh
    lf
    bat
    dig
    vim
    vlc
    zip
    gcc
    anki
    btop
    fish
    gimp
    nixd
    tree
    wget
    cargo
    exfat
    unzip
    xclip
    #lmms
    putty
    clippy
    direnv
    gnutls
    #bluez
    cowsay
    lolcat
    netcat
    ntfs3g
    #vscode
    #kicad
    #krita
    #nheko
    rustfmt
    arduino
    openocd
    cmatrix
    discord
    firefox
    gparted
    openssl
    ripgrep
    #ardour
    bottles
    spotify
    xplanet
    gns3-gui
    neofetch
    tealdeer
    usbutils
    #blender
    #gccgo14
    audacity
    celestia
    gpredict
    obsidian
    inetutils
    alejandra
    librewolf
    man-pages
    wireshark
    #guitarix
    #openscad
    starfetch
    codeblocks
    obs-studio
    platformio
    stellarium
    #pkgs.hello
    nixpkgs-fmt
    qbittorrent
    yandex-music
    protonvpn-gui
    rust-analyzer
    man-pages-posix
    #pkgs.nerdfonts
    telegram-desktop
    kdePackages.kate
    jetbrains-toolbox
    gnome-disk-utility
    #libsForQt5.kamoso
    bluez-experimental
    emacsPackages.doom
    #ciscoPacketTracer7
    #libsForQt5.yakuake
    emacsPackages.flymd
    libreoffice-qt6-still
    python312Packages.pip
    emacsPackages.markdown-preview-mode
    
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    #(pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];
}

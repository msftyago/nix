{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    lf
    git
    bat
    vim
    tree
    btop
    fish
    curl
    nixd
    wget
    zeek
    emacs
    kitty
    tshark
    netcat
    cowsay
    lolcat
    ntfs3g
    tcpdump
    suricata
    firejail
    pciutils
    usbutils
    neofetch
    alejandra
    wireshark
    nixpkgs-fmt
    rust-analyzer
    emacsPackages.doom
  ];

  users.users.yago = {
    isNormalUser = true;
    shell = pkgs.fish;
    description = "Kamol Khakimov";
    extraGroups = [
      "networkmanager"
      "wireshark"
      "wheel"
    ];
    packages = with pkgs; [
      vlc
      anki
      gimp
      emacs
      #lmms
      #kicad
      #krita
      #nheko
      #ardour
      discord
      spotify
      #blender
      #gccgo14
      audacity
      gns3-gui
      #guitarix
      #openscad
      librewolf
      obs-studio
      qbittorrent
      yandex-music
      protonvpn-gui
      #pkgs.nerdfonts
      kdePackages.kate
      telegram-desktop
      jetbrains-toolbox
      #libsForQt5.kamoso
      #ciscoPacketTracer8
      #ciscoPacketTracer7
      #libsForQt5.yakuake
    ];
  };
}

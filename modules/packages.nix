{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    nh
    lf
    git
    bat
    vim
    meow
    spek
    htop
    tree
    btop
    fish
    curl
    nixd
    yazi
    emacs
    kitty
    oxker
    whois
    bruno
    direnv
    cowsay
    lolcat
    bottom
    ntfs3g
    csvlens
    busybox
    openocd
    rustfmt
    pkgconf
    hyfetch
    lazygit
    ripgrep
    onefetch
    lemonade
    wash-cli
    binsider
    keycloak
    pgadmin4
    notonoto
    firejail
    pciutils
    usbutils
    sqlx-cli
    scope-tui
    alejandra
    man-pages
    # postgresql
    font-alias
    noto-fonts
    mullvad-vpn
    nixpkgs-fmt
    rust-analyzer
    mullvad-browser
    mullvad-compass
    man-pages-posix
    gnome-disk-utility
    bluez-experimental
    python312Packages.pip
    noto-fonts-color-emoji
    apache-directory-studio

    netbird
    netbird-ui
    netbird-dashboard
    netbird-management

    fishPlugins.done
    fishPlugins.sponge
    fishPlugins.pisces
    fishPlugins.puffer
    fishPlugins.forgit
    fzf
    # fishPlugins.gruvbox
    fishPlugins.wakatime-fish
    fishPlugins.colored-man-pages
    fishPlugins.fish-you-should-use
    fishPlugins.grc
    grc
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
    # hashedPassword = "$y$j9T$uWKuCDwBimDNUi8JwVVe0/$XccZyH2dhqQPyfF6OE1fjqJ0shBeR10Rr9SqGRtjaD4";
    packages = with pkgs; [
      # Network
      dig
      wget
      zeek
      trippy
      snicat
      netcat
      tshark
      tcpdump
      nethack
      suricata
      bandwhich
      inetutils

      # Absolute kasha
      vlc
      #nyxt
      anki
      gimp
      emacs
      #lmms
      #nheko
      #kicad
      #krita
      docker
      #ardour
      fractal
      element
      keymapp
      discord
      spotify
      kontroll
      #blender
      obsidian
      #gccgo14
      audacity
      gns3-gui
      #guitarix
      #openscad
      librewolf
      wireshark
      dockerfmt
      proton-vpn
      obs-studio
      element-web
      thunderbird
      qbittorrent
      yandex-music
      docker-compose
      element-desktop
      #pkgs.nerdfonts
      telegram-desktop
      jetbrains-toolbox
      #libsForQt5.kamoso
      #ciscoPacketTracer8
      #ciscoPacketTracer7
      docker-color-output
      libreoffice-qt6-still
      dockerfile-language-server

      # KDE: science
      kdePackages.step
      kdePackages.marble

      # KDE: utils
      kdePackages.kget
      kdePackages.kate
      kdePackages.krdc
      kdePackages.krfb
      kdePackages.kfind      
      kdePackages.kclock
      kdePackages.ktouch
      kdePackages.kalarm
      kdePackages.kbackup
      kdePackages.yakuake
      kdePackages.kteatime
      kdePackages.kdenlive
      kdePackages.karousel
      kdePackages.umbrello
      kdePackages.ghostwriter
      kdePackages.ksshaskpass

      # KDE: social
      kdePackages.neochat
      kdePackages.akregator

      # KDE: entertainment
      kdePackages.kmahjongg
      kdePackages.konqueror
      kdePackages.ksudoku
      kdePackages.kapman
      kdePackages.minuet
      kdePackages.kshisen
      kdePackages.palapeli
      kdePackages.knavalbattle
      kdePackages.kigo # my fav board game
      kdePackages.kreversi
      kdePackages.knetwalk
      kdePackages.konquest
      kdePackages.bovo
      kdePackages.kmplot
      kdePackages.katomic
      kdePackages.francis
      kdePackages.ksirk
      kdePackages.kasts
      kdePackages.kamoso
      kdePackages.alligator
      kdePackages.filelight
      kdePackages.ksystemlog
      kdePackages.ksystemstats
      kdePackages.ktorrent
      kdePackages.kruler
      kdePackages.konversation
      kdePackages.falkon
      kdePackages.kalgebra
      # kdePackages.kajongg #BROKEN
      kdePackages.kamera
      kdePackages.isoimagewriter
      kdePackages.kolourpaint
      kdePackages.kcolorpicker
      kdePackages.kcolorchooser
    ];
  };
}

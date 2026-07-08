{pkgs, ...}: {

  # home.packages = with pkgs; [
  #   gh
  #   starfetch
  #   zed-editor
  #   codeblocks
    
  #   # # overrides. You can do that directly here, just don't forget the
  #   # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
  #   # # fonts?
  #   #(pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

  #   # # You can also create simple shell scripts directly inside your
  #   # # configuration. For example, this adds a command 'my-hello' to your
  #   # # environment:
  #   # (pkgs.writeShellScriptBin "my-hello" ''
  #   #   echo "Hello, ${config.home.username}!"
  #   # '')
  # ];
  
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
      direnv
      cowsay
      lolcat
      bottom
      ntfs3g
      csvlens
      openocd
      rustfmt
      pkgconf
      hyfetch
      lazygit
      ripgrep
      onefetch
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
      postgresql
      font-alias
      noto-fonts
      nixpkgs-fmt
      rust-analyzer
      man-pages-posix
      gnome-disk-utility
      bluez-experimental
      python312Packages.pip
      noto-fonts-color-emoji
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
        #nyxt
        anki
        gimp
        emacs
        #lmms
        #nheko
        #kicad
        #krita
        #ardour
        fractal
        element
        keymapp
        discord
        spotify
        #blender
        obsidian
        #gccgo14
        audacity
        gns3-gui
        #guitarix
        #openscad
        librewolf
        wireshark
        proton-vpn
        obs-studio
        element-web
        thunderbird
        qbittorrent
        yandex-music
        element-desktop
        #pkgs.nerdfonts
        kdePackages.kate
        telegram-desktop
        jetbrains-toolbox
        #libsForQt5.kamoso
        #ciscoPacketTracer8
        #ciscoPacketTracer7
        #libsForQt5.yakuake
        libreoffice-qt6-still
      ];
    };
  }

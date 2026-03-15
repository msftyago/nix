#                  .-'''-.
#                 '   _    \
#       .       /   /` '.   \  __  __   ___         __.....__
#     .'|      .   |     \  ' |  |/  `.'   `.   .-''         '.
#    <  |      |   '      |  '|   .-.  .-.   ' /     .-''"'-.  `.
#     | |      \    \     / / |  |  |  |  |  |/     /________\   \
#     | | .'''-.`.   ` ..' /  |  |  |  |  |  ||                  |
#     | |/.'''. \  '-...-'`   |  |  |  |  |  |\    .-------------'
#     |  /    | |             |  |  |  |  |  | \    '-.____...---.
#     | |     | |             |__|  |__|  |__|  `.             .'
#     | |     | |                                 `''-...... -'
#     | '.    | '.
#     '---'   '---'
{
  pkgs,
  ...
}: {
  home.username = "yago";
  home.homeDirectory = "/home/yago";

  home.stateVersion = "25.11";

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
    bluez
    cowsay
    lolcat
    netcat
    ntfs3g
    #vscode
    #kicad
    #krita
    #nheko
    arduino
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
    #ciscoPacketTracer7
    #libsForQt5.yakuake
    libreoffice-qt6-still
    python312Packages.pip
    
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

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/yago/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Git
  programs.git = {
    enable = true;
    userName = "msftyago";
    userEmail = "muhammadkamol@yahoo.com";
  };
}

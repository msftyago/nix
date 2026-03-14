{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "yago";
  home.homeDirectory = "/home/yago";

  home.stateVersion = "25.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    #pkgs.hello
    lf
    gh
    bat
    vim
    vlc
    dig
    zip
    fish
    anki
    gimp
    btop
    tree
    nixd
    unzip
    exfat
    cargo
    xclip
    netcat
    lolcat
    cowsay
    vscode
    ntfs3g
    openssl
    ripgrep
    cmatrix
    firefox
    gparted
    discord
    arduino
    gns3-gui
    neofetch
    tealdeer
    usbutils
    librewolf
    alejandra
    wireshark
    obs-studio
    platformio
    codeblocks
    nixpkgs-fmt
    qbittorrent
    yandex-music
    rust-analyzer
    protonvpn-gui
    telegram-desktop
    jetbrains-toolbox
    gnome-disk-utility
    
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

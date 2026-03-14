# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).
#       _  _______  ______  ____    _________  _  _______________
#      / |/ /  _/ |/_/ __ \/ __/___/ ___/ __ \/ |/ / __/  _/ ___/
#     /    // /_>  </ /_/ /\ \/___/ /__/ /_/ /    / _/_/ // (_ /
#    /_/|_/___/_/|_|\____/___/    \___/\____/_/|_/_/ /___/\___/
#
{
  inputs,
  system,
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    inputs.home-manager.nixosModules.home-manager
  ];

  home-manager = {
    extraSpecialArgs = {inherit inputs;};
    users = {
      yago = import ../home.nix;
    };
  };

  # systemd my beloved
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nix";

  nix.settings.experimental-features = ["nix-command" "flakes"];

  networking.networkmanager.enable = true;

  time.timeZone = "Asia/Tashkent";
  i18n.defaultLocale = "en_GB.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    #keyMap = "us";
    useXkbConfig = true; # use xkb.options in tty.
  };

  # X11
  services.xserver.enable = true;
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

  # Configure keymap in X11
  # services.xserver.xkb.layout = "us";
  # services.xserver.xkb.options = "eurosign:e,caps:escape";

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # services.pulseaudio.enable = true;
  # OR
  # services.pipewire = {
  #   enable = true;
  #   pulse.enable = true;
  # };

  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  # KDE
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true; # powers up the default Bluetooth controller on boot
  services.blueman.enable = true;

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
  };

  virtualisation.virtualbox.host.enable = true;
  users.extraGroups.vboxusers.members = ["yago"];
  virtualisation.virtualbox.host.enableExtensionPack = true;
  virtualisation.virtualbox.guest.enable = true;

  users.users.yago = {
    isNormalUser = true;
    shell = pkgs.fish;
    description = "Kamol Hakimov";
    extraGroups = ["networkmanager" "wheel"];
    packages = with pkgs; [
      gh
      bat
      dig
      vlc
      anki
      gimp
      tree
      #lmms
      bluez
      exfat
      kitty
      xclip
      #kicad
      #krita
      #nheko
      netcat
      ntfs3g
      vscode
      #ardour
      bottles
      discord
      gparted
      openssl
      ripgrep
      spotify
      xplanet
      #blender
      #gccgo14
      audacity
      celestia
      gns3-gui
      gpredict
      neofetch
      obsidian
      tealdeer
      #guitarix
      #openscad
      librewolf
      starfetch
      wireshark
      codeblocks
      obs-studio
      stellarium
      virtualbox
      qbittorrent
      yandex-music
      protonvpn-gui
      #pkgs.nerdfonts
      kdePackages.kate
      telegram-desktop
      jetbrains-toolbox
      #libsForQt5.kamoso
      bluez-experimental
      gnome-disk-utility
      #ciscoPacketTracer7
      #libsForQt5.yakuake
      libreoffice-qt6-still
      python312Packages.pip
    ];
  };

  programs.firefox.enable = true;
  programs.fish.enable = true;

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    lf
    git
    vim
    btop
    fish
    nixd
    wget
    emacs
    cowsay
    lolcat
    neofetch
    alejandra
    wireshark
    nixpkgs-fmt
    rust-analyzer
    emacsPackages.doom
  ];

  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  services.emacs = {
    enable = true;
    package = inputs.doom-emacs.packages.${system}.doom-emacs.override {
      doomPrivateDir = ./doom.d; #change it to relative path!
    };
  };

  # services.openssh.enable = true;

  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # networking.firewall.enable = false;

  # https://nixos.org/manual/nixos/stable/options#opt-system.stateVersion .
  system.stateVersion = "25.11"; # Did you read the comment?
}

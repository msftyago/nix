# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).
#       _  _______  ______  ____    _________  _  _______________
#      / |/ /  _/ |/_/ __ \/ __/___/ ___/ __ \/ |/ / __/  _/ ___/
#     /    // /_>  </ /_/ /\ \/___/ /__/ /_/ /    / _/_/ // (_ /
#    /_/|_/___/_/|_|\____/___/    \___/\____/_/|_/_/ /___/\___/
#
{
  inputs,
  config,
  pkgs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    
    inputs.home-manager.nixosModules.home-manager

    ./parts/game.nix
    ./parts/audio.nix
    
  ];

  home-manager = {
    extraSpecialArgs = {inherit inputs;};
    users = {
      yago = import ../home.nix;
    };
  };

  programs = {
    nix-ld = {
      enable = true;
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

  # KDE
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true; # powers up the default Bluetooth controller on boot
  services.blueman.enable = true;

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
      vlc
      anki
      gimp
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
      #ciscoPacketTracer7
      #libsForQt5.yakuake
    ];
  };

  programs.firefox.enable = true;
  programs.fish.enable = true;

  nixpkgs.config.allowUnfree = true;

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
    emacs
    kitty
    netcat
    cowsay
    lolcat
    ntfs3g
    pciutils
    usbutils
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

  # services.openssh.enable = true;

  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # networking.firewall.enable = false;

  # https://nixos.org/manual/nixos/stable/options#opt-system.stateVersion .
  system.stateVersion = "25.11"; # Did you read the comment?
}

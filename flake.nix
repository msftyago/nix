{
  /*
       ___                 ___
      |__  |     /\  |__/ |__
      |    |___ /~~\ |  \ |___


  NixOS running on Ryzen 7 5800H, Nvidia GeForce RTX3060 6GB Mobile, 16GB RAM
  Main machine, laptop -- Acer NITRO5 AN515-45
  */

  description = "yago's flake configuration";

  nixConfig = {
    experimental-features = ["nix-command" "flakes"];
  };

  inputs = {
    # Nixpkgs stable (Xantusia 25.11)
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";

    # Nixpkgs unstable for rolling release
    nixpkgs-unstable.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    # For hardware specific modifications
    hardware.url = "github:nixos/nixos-hardware";

    # Home Manager
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  } @ inputs:
  let
    # Supported system (x86_64 architecture only)
    system = "x86_64-linux";

    # allow_unfree packages
    pkgs = import nixpkgs {
      inherit system; # system = system;
      config.allowUnfree = true;
    };

    # Overlays
    overlays = import ./overlays/default.nix;
    pkgsWithOverlays = import pkgs {
      inherit system;
      overlays = [overlays];
      config.allowUnfree = true;
    };
  in {
    nixosConfigurations.yago = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
        ./nixos/configuration.nix
        ./nixos/hardware-configuration.nix
      ];
      
      specialArgs = {
        inherit self inputs pkgsWithOverlays;
      };
    };

    # Home manager
    homeConfigurations.yago = home-manager.lib.homeManagerConfiguration {
      inherit system;
      username = "yago";
      homeDirectory = "/home/yago";
      configuration = ./home.nix;

      pkgs = pkgsWithOverlays;
    };
  };
}

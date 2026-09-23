{
  /*
         ___                 ___
        |__  |     /\  |__/ |__
        |    |___ /~~\ |  \ |___

    NixOS running on Ryzen 7 5800H, Nvidia GeForce RTX3060 6GB Mobile, 16GB RAM
    Main machine, laptop -- x86_64linux :: Acer NITRO5 AN515-45
  */

  description = "yago's flake configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    # GNU Emacs my beloved
    # doom-emacs.url = "github:nix-community/nix-doom-emacs";

    zed-extensions.url = "github:DuskSystems/nix-zed-extensions";

    nixpkgs-unstable.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    hardware.url = "github:nixos/nixos-hardware";

    home-manager.url = "github:nix-community/home-manager/release-26.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    {
      self,
      nixpkgs,
      ...
    }@inputs:
    {
      nixosConfigurations.yago = nixpkgs.lib.nixosSystem {
        modules = [
          ./nixos/configuration.nix
          ./nixos/hardware-configuration.nix
        ];

        specialArgs = {
          inherit self inputs;
        };
      };
    };
}

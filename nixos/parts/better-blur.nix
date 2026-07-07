{ inputs, pkgs, ... }:
{
  environment.systemPackages = [
    inputs.kwin-effects-forceblur.packages.${pkgs.system}.default # Wayland
    #inputs.kwin-effects-forceblur.packages.${pkgs.system}.x11 # X11
  ];
}

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
  home.username = "yago";
  home.homeDirectory = "/home/yago";

  home.enableNixpkgsReleaseCheck = false;

  home.stateVersion = "25.11";
  nixpkgs.config.allowUnfree = true;

  imports = [
    ./home/packages.nix
    #./home/programs/kanata #TODO: fix the user group permissions
    ./nixos/parts/emacs.nix
  ];

  home.file = {};

  home.sessionVariables = {
    EDITOR = "emacs";
  };

  programs.home-manager.enable = true;
  
  # Git
  programs.gh.enable = true;

  programs.git = {
    settings = {
      user = {
        name = "Kamol Hakimov";
        email = "muhammadkamol@yahoo.com";
      };
      init.defaultBranch = "main";
    };
  };
}

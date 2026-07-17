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
    ./emacs/emacs.nix
    ./home/packages.nix
    # # TODO: fix the user group permissions
    # ./home/programs/kanata
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

        ignores = [
          "# -*- mode: gitignore; -*-"
	        "*~"
          "\#*\#"
          "/.emacs.desktop"
          "/.emacs.desktop.lock"
          "*.elc"
          "auto-save-list"
          "tramp"
          ".\#*"
          "./nixos/parts/.secrets"
          "./modules/catnet.nix "
          "# Org-mode"
          ".org-id-locations"
          "*_archive"
          "# flymake-mode"
          "*_flymake.*"
          "# eshell files"
          "/eshell/history"
          "/eshell/lastdir"
          "# elpa packages"
          "/elpa/"
          "# reftex files"
          "*.rel"
          "# AUCTeX auto folder"
          "/auto/"
          "# cask packages"
          ".cask/"
          "dist/"
          "# Flycheck"
          "flycheck_*.el"
          "# server auth directory"
          "/server/"
          "# projectiles files"
          ".projectile"
          "# directory configuration"
          ".dir-locals.el"
          "# network security"
          "/network-security.data"
          "# undo-tree"
          "*.~undo-tree~"
             ];
      init.defaultBranch = "main";
    };
  };
}

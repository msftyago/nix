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

  home.enableNixpkgsReleaseCheck = false; #handles the version mismatch warning

  home.stateVersion = "25.11";
  nixpkgs.config.allowUnfree = true;

  imports = [
    ./home/packages.nix #home.packages

    ./nixos/parts/emacs.nix
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

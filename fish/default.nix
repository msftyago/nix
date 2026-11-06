{
  pkgs,
  ...
}:
{
  programs.fish = {
    enable = true;    
    shellAliases = {
      e = "emacs";
      en = "emacs -nw";
      cls = "clear";
      cat = "bash --plain";
      mvc = "mullvad connect";
      mvd = "mullvad disconnect";
    };
  };

  home.packages = with pkgs; [
    fzf
    grc
    fishPlugins.done
    fishPlugins.grc
    fishPlugins.pisces
    fishPlugins.puffer
    fishPlugins.forgit    
    fishPlugins.wakatime-fish
    fishPlugins.colored-man-pages
    fishPlugins.fish-you-should-use
  ];
}

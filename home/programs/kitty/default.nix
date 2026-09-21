{lib, ...}: {
  programs.kitty = {
    enable = true;
    shellIntegration.enableFishIntegration = true;

    settings = lib.mkForce {
      shell = "fish";
      
      editor = "emacs";

      # # Extra config
      # include = "~/nix/home/programs/kitty/current-theme.conf";

      # Bell (has to be WAV or OGA on linux)

      bell_path = "~/nix/home/programs/kitty/bell-assets/are-u-sure.mp3";

      # Font
      font_family = "DejaVu Sans Mono";
      font_size = "9.0";

      # Cursor & Mouse
      cursor_tail = 1;
      cursor_shape = "beam";
      mouse_hide_wait = "-1.0";
      cursor_beam_thickness = "1.666";
      cursor_trail_start_threshold = 1;
      cursor_stop_blinking_after = "0.1";

      # Tab
      tab_bar_min_tabs = 1;
      tab_separator = "  ࿖ ";
      tab_bar_align = "right";
      tab_title_max_length = 20;
      tab_title_template = "{f'{title[:30]}…' if title.rindex(title[-1]) + 1 > 30 else (title.center(6) if (title.rindex(title[-1]) + 1) % 2 == 0 else title.center(5))}";

      # Background
      background_blur = 1;
      # background_opacity = "0.7";
      dynamic_background_opacity = true;

      # Extra & Cosmetics
      url_style = "double";
      window_padding_width = 4;

      # enable_audio_bell = false;
      confirm_os_window_close = 0;
    };

    extraConfig = ''
      # The basic colors
      foreground                      #ffffff
      background                      #000000
      selection_foreground            #000000
      selection_background            #8B0101

      # Cursor colors
      cursor                          #bbc2cf
      cursor_text_color               #cb0101

      # kitty window border colors
      active_border_color     #000000
      inactive_border_color   #000000

      # Tab bar colors
      active_tab_foreground   #cb0101
      active_tab_background   #000000
      inactive_tab_foreground #000000
      inactive_tab_background #000000

      # The basic 16 colors
      # black
      color0 #000000
      color8 #000000

      # red
      color1 #cb0101
      color9 #cb0101

      # green
      color2  #1FB500
      color10 #1FB500

      # yellow
      color3  #FFEE00
      color11 #FFEE00

      # blue
      color4  #0180fe
      color12 #0180fe

      # magenta
      color5  #FF00BB
      color13 #FF00BB

      # cyan
      color6  #00D9FF
      color14 #00D9FF

      # white
      color7  #FFFFFF
      color15 #FFFFFF
    '';
  };
}

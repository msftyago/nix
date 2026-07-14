{lib, ...}:{

  programs.kitty = {
    enable = true;

    settings = lib.mkForce {

      editor = "emacs";

      # # Extra config
      # include = "~/nix/home/programs/kitty/current-theme.conf";

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
      tab_separator=  "  ࿖ ";
      tab_bar_align = "right";
      tab_title_max_length = 20;
      tab_title_template =
        "{f'{title[:30]}…' if title.rindex(title[-1]) + 1 > 30 else (title.center(6) if (title.rindex(title[-1]) + 1) % 2 == 0 else title.center(5))}";


      # Background
      background_blur = 1;
      background_opacity = "0.7";
      dynamic_background_opacity = true;

      # Extra & Cosmetics
      url_style = "double";
      window_padding_width = 4;
      enable_audio_bell = false;    
      confirm_os_window_close = 0;
    };

    extraConfig = ''
        # BlackMetal by metalelf0, https://github.com/metalelf0
        # This schemes are available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

        selection_foreground #000000
        selection_background #ffffff

        foreground #ffffff
        background #000000

        color0   #000000
        color1   #5f8787
        color2   #dd9999
        color3   #a06666
        color4   #888888
        color5   #999999
        color6   #aaaaaa
        color7   #c1c1c1
        color8   #333333
        color9   #5f8787
        color10  #dd9999
        color11  #a06666
        color12  #888888
        color13  #999999
        color14  #aaaaaa
        color15  #c1c1c1

        active_tab_foreground #ffffff
        active_tab_background #000000
        inactive_tab_foreground #666666
        inactive_tab_background #000000

        active_border_color #ffffff
    '';
  };
}

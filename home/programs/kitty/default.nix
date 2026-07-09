{lib, ...}:{

  programs.kitty = lib.mkForce {
  enable = true;
  settings = {

    editor = "emacs";

    # Extra config
    include = "/etc/home/.config/kitty/current-theme.conf";

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
  };
}

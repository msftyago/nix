# {pkgs, /*inputs,*/ lib, ...}: {
  
#   pkgs.zed-editor = lib.mkForce {
#     enable = true;
#     package = pkgs.zed-editor;
#     extraPackages = with pkgs; [
#       nixd
#       nixfmt
#       nil
#       bash-language-server
#       typescript
#       typescript-language-server
#       biome      
#       # package.json-tool-lsp
#       # wit-cli
#       # kanata-lsp
#     ];
#     load_direnv = "shell_hook";
#     #? base_keymap = "emacs";
#     #? hour_format = "hour24";
#     #? auto_update = false;
#     # emacs_mode = true;
#     terminal = {
#       alternate_scroll = "off";
#       blinking = "off";
#       copy_on_select = false;
#       dock = "bottom";
#       detect_venv = {
#         on = {
#           directories = [ ".env" "env" ".venv" "venv" ];
#           activate_script = "default";
#         };
#       };
#       env = {
#         TERM = "kitty";
#       };

#       theme = {
#         mode = "dark";
#         light = "Ayu Light";
#         dark = "Vercel Dark";
#       };
#       icon_theme = {
#         mode = "dark";
#         light = "JetBrains New UI (Light)";
#         dark = "JetBrains New UI (Dark)";
#       };
      
#       telemetry = {
#         diagnostics = false;
#         metrics = false;
#       };
#       font_family = "DejaVu Sans Mono";
#       font_features = null;
#       font_size = "9.0";
#       line_height = "comfortable";
#       option_as_meta = false;
#       button = false;
#       # shell = "system";
#       shell = {
#         program = "fish";
#       };
#       toolbar = {
#         title = true;
#       };
#       working_directory = "current_project_directory";
#     };

#     languages = {
#       Nix = {
#         language_servers = [
#           "!nil"
#           "nixd"
#         ];
#       };
#       TypeScript = {
#         inlay_hints = {
#           enabled = false;
#         };
#       };
#       TSX = {
#         inlay_hints = {
#           enabled = false;
#         };
#       };
#     };

#     lsp = {
#       typescript-language-server = {
#           initialization_options = {
#             preferences = {
#               includeInlayVariableTypeHints = true;
#               includeInlayParameterNameHints = "all";
#               includeInlayParameterNameHintsWhenArgumentMatchesName = true;
#               includeInlayFunctionParameterTypeHints = true;
#               includeInlayVariableTypeHintsWhenTypeMatchesName = false;
#             };
#           };
#       };
      
#       rust-analyzer = {
#         binary = {
#           ignore_system_version = true;
#           # path = lib.getExe pkgs.rust-analyzer;
#           # path_lookup = true;
#         };
#       };
      
#       nix = {
#         binary = {
#           path_lookup = true;
#         };
#       };
#     };
#   };
#   # programs.zed-editor-extensions = {
#   #         enable = true;
#   #         packages = with pkgs.zed-extensions; [
#   #           biome
#   #           css-modules-kit
#   #           docker-compose
#   #           elisp
#   #           env
#   #           git-firefly
#   #           gruvbox-baby
#   #           html
#   #           jq
#   #           json-tool-lsp
#   #           json5
#   #           just
#   #           markdownlint
#   #           mdx
#   #           mermaid
#   #           nix
#   #           org
#   #           scheme
#   #           sql
#   #           toml
#   #           wit
#   #         ];
#   #       };
# }


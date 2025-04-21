{ pkgs, ... }:
{
  home.file.".zed_server".source = "${pkgs.zed-editor.remote_server}/bin";
  programs.zed-editor = {
    enable = true;
    installRemoteServer = true;
    extensions = [
      "nix"
      "aura-theme"
    ];
    userSettings = {
      ui_font_family = "JetBrainsMono Nerd Font";
      ui_font_size = 16;
      buffer_font_size = 16;
      theme = {
        mode = "system";
        dark = "Aura Dark";
        light = "Aura Dark";
      };
      lsp = {
        nil = {
          flake = {
            autoArchive = true;
          };
          initialization_options = {
            formatting = {
              command = [
                "nixfmt"
                "--quiet"
                "--"
              ];
            };
            settings = {

              diagnostics = {
                ignored = [ "unused_binding" ];
              };
            };
          };
        };
      };
      languages = {
        "Nix" = {
          language_servers = [
            "nil"
            "!nixd"
          ];
        };
      };
    };
  };
}

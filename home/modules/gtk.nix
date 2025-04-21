{ pkgs, ... }:
{
  home.pointerCursor = {
    gtk.enable = true;
    # x11.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 16;
  };

  gtk = {
    enable = true;

    theme = {
      package = pkgs.tokyonight-gtk-theme;
      name = "Tokyonight-Dark";
    };

    iconTheme = {
      package = pkgs.papirus-nord;
      name = "Papirus-Dark";
    };

    font = {
      name = "Sans";
      size = 11;
    };
  };
}

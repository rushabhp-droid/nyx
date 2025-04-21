{ ... }:
{
  programs.alacritty.enable = true;
  programs.alacritty.settings = {
    font.normal = {
      "family" = "JetBrainsMono Nerd Font";
      "style" = "Regular";
    };
    font.size = 14;
    colors.primary = {
      "background" = "#15141b";
      "foreground" = "#edecee";
    };
    colors.normal = {
      "black" = "#110f18";
      "red" = "#ff6767";
      "green" = "#61ffca";
      "yellow" = "#ffca85";
      "blue" = "#a277ff";
      "magenta" = "#a277ff";
      "cyan" = "#61ffca";
      "white" = "#edecee";
    };
    colors.bright = {
      "black" = "#4d4d4d";
      "red" = "#ff6767";
      "green" = "#61ffca";
      "yellow" = "#ffca85";
      "blue" = "#a277ff";
      "magenta" = "#a277ff";
      "cyan" = "#61ffca";
      "white" = "#edecee";
    };
    colors.selection = {
      "text" = "CellForeground";
      "background" = "#29263c";
    };
    colors.cursor = {
      "cursor" = "#a277ff";
    };
  };
}

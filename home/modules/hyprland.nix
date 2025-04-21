{ ... }:
{
  imports = [
    ./hyprland
  ];
  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;
    settings = {
      "monitor" = "eDP-1,1920x1080,0x0,1";
      "$mod" = "SUPER";
      "$smod" = "SUPER SHIFT";
    };
  };
}

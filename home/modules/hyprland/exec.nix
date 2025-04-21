{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "swww-daemon"
      "swaync"
      "systemctl --user start hyprpolkitagent"
      "waybar"
    ];
  };
}

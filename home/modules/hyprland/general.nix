{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    general = {
      layout = "dwindle";
      gaps_in = 6;
      gaps_out = 8;
      border_size = 2;
      resize_on_border = true;
      "col.active_border" = "rgb(162,119,255) rgb(61,55,94) rgb(97,255,202) 45deg";
      "col.inactive_border" = "rgb(41,38,60)";
    };
    misc = {
      layers_hog_keyboard_focus = true;
      initial_workspace_tracking = 0;
      mouse_move_enables_dpms = true;
      key_press_enables_dpms = false;
      disable_hyprland_logo = true;
      disable_splash_rendering = true;
      enable_swallow = false;
      vfr = true; # Variable Frame Rate
      vrr = 2; # Variable Refresh Rate  Might need to set to 0 for NVIDIA/AQ_DRM_DEVICES
      # Screen flashing to black momentarily or going black when app is fullscreen
      # Try setting vrr to 0
    };
    decoration = {
      rounding = 10;
      blur = {
        enabled = true;
        size = 5;
        passes = 3;
        ignore_opacity = false;
        new_optimizations = true;
      };
      shadow = {
        enabled = true;
        range = 4;
        render_power = 3;
        color = "rgba(1a1a1aee)";
      };
    };

    env = [
      "NIXOS_OZONE_WL, 1"
      "NIXPKGS_ALLOW_UNFREE, 1"
      "XDG_CURRENT_DESKTOP, Hyprland"
      "XDG_SESSION_TYPE, wayland"
      "XDG_SESSION_DESKTOP, Hyprland"
      "GDK_BACKEND, wayland, x11"
      "CLUTTER_BACKEND, wayland"
      "QT_QPA_PLATFORM=wayland;xcb"
      "QT_WAYLAND_DISABLE_WINDOWDECORATION, 1"
      "QT_AUTO_SCREEN_SCALE_FACTOR, 1"
      "SDL_VIDEODRIVER, x11"
      "GDK_SCALE,1"
      "QT_SCALE_FACTOR,1"
      "EDITOR,zeditor"
    ];
  };
}

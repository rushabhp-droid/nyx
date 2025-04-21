{ ... }:
let
  inherit (import ../variables.nix)
    menu
    terminal
    browser
    fm
    ide
    ;
in
{
  wayland.windowManager.hyprland.settings = {
    bind =
      [
        "$mod, Return, exec, ${terminal}"
        "$mod, D, exec, ${menu}"
        "$mod, W, exec, ${browser}"
        "$mod, E, exec, ${fm}"
        "$mod, I, exec, ${ide}"
        "$mod, L, exec, wlogout"
        "$mod, F, fullscreen,"
        "$mod, V, togglefloating,"
        "$mod, C, killactive,"
        ",XF86AudioRaiseVolume,exec,wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
        ",XF86AudioLowerVolume,exec,wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        ",XF86AudioPlay, exec, playerctl play-pause"
        ",XF86AudioPause, exec, playerctl play-pause"
        ",XF86AudioNext, exec, playerctl next"
        ",XF86AudioPrev, exec, playerctl previous"
        ",XF86MonBrightnessDown,exec,brightnessctl set 5%-"
        ",XF86MonBrightnessUp,exec,brightnessctl set +5%"
      ]
      ++ (
        # workspaces
        # binds $mod + [shift +] {1..9} to [move to] workspace {1..9}
        builtins.concatLists (
          builtins.genList (
            i:
            let
              ws = i + 1;
            in
            [
              "$mod, code:1${toString i}, workspace, ${toString ws}"
              "$mod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
            ]
          ) 9
        )
      );
    bindm = [
      "$mod, mouse:272, movewindow"
      "$mod, mouse:273, resizewindow"
    ];

  };
}

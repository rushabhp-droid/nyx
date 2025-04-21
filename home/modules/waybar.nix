{ ... }:
{
  programs.waybar = {
    enable = true;
    settings = {
      hyprBar = {
        layer = "top";
        position = "top";
        height = 30;
        output = [
          "eDP-1"
        ];
        modules-left = [ "hyprland/workspaces" ];
        modules-center = [ "hyprland/window" ];
        modules-right = [
          "tray"
          "pulseaudio"
          "battery"
          "clock"
        ];
      };
    };
    style = ''
      	* {
      	font-size: 1em;
      	font-family: JetBrainsMono Nerd Font;
      	border-radius: 0;
      }

      waybar {
      	color: #edecee;
      	background: transparent;
      }

      #custom-arrow-left-fg,
      #custom-arrow-right-fg {
      	color: #15141b;
      }
      #custom-arrow-left-bg,
      #custom-arrow-right-bg {
      	color: #000;
      	background: #15141b;
      }

      #window
      #backlight,
      #battery,
      #clock,
      #memory,
      #mode,
      #network,
      #pulseaudio,
      #tray,
      #workspaces {
      	background: #15141b;
      	padding: 0 0.5em;
      }

      #mode {
      	color: #15141b;
      	background: #61ffca;
      }

      #workspaces  {
      	padding: 0;
      }
      #workspaces button {
      	color: #edecee;
      	padding: 0 0.3em;
      }
      #workspaces button.visible {
      	color: #15141b;
      	background: #6d6d6d;
      }
      #workspaces button.focused {
      	color: #15141b;
      	background: #a277ff;
      }
      #workspaces button.urgent {
      	color: #15141b;
      	background: #61ffca;
      }
      #workspaces button:hover {
      	color: #61ffca;
      	background: #15141b;
      	border: 1px solid #61ffca;
      	box-shadow: inherit;
      	text-shadow: inherit;
      }

      #backlight {
      	color: #f694ff;
      }
      #battery {
      	color: #82e2ff;
      }
      #memory {
      	color: #ff6767;
      }
      #network {
      	color: #61ffca;
      }
      #pulseaudio {
      	color: #ffca85;
      }'';
  };
}

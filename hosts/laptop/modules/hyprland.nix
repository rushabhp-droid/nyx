{
  pkgs,
  inputs,
  ...
}:
{
  programs.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    portalPackage =
      inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
  };
  services.displayManager.sddm = {
    wayland.enable = true;
    enable = true;
    theme = "catppuccin-mocha";
  };
  services.gvfs.enable = true;
  environment.systemPackages = with pkgs; [
    rofi-wayland
    pavucontrol
    alacritty
    swaynotificationcenter
    hyprpolkitagent
    hyprlock
    hypridle
    wl-clipboard
    swww
    wlogout
    yazi
    playerctl
    imv
    waybar
    ffmpegthumbnailer
    mpv
    nautilus
    xdg-utils
    xdg-user-dirs
    catppuccin-sddm
  ];
}

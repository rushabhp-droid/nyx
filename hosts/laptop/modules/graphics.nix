{ pkgs, ... }:
{
  # Graphics Drivers
  hardware.graphics.extraPackages = with pkgs; [
    vaapiIntel
    intel-media-driver
  ];

}

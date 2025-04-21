{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    (prismlauncher.override {
      # Add binary required by some mod
      jdks = [
        jdk
        jdk23
      ];
    })
  ];
}

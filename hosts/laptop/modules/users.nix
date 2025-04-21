{ pkgs, ... }:
{
  users.users.rushabhp = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
    packages = [
      pkgs.nil
      pkgs.nixfmt-rfc-style
    ];
  };
}

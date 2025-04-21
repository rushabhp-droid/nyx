{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    nerd-fonts.iosevka-term-slab
    nerd-fonts.fira-code
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
  ];
}

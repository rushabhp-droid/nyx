{ pkgs, ... }:
{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "rushabhp";
  home.homeDirectory = "/home/rushabhp";
  home.packages = [
    pkgs.gh
    pkgs.eza
    pkgs.fzf
    pkgs.ripgrep
    pkgs.librewolf
    pkgs.nodejs
    pkgs.fastfetch
    pkgs.yt-dlp
    pkgs.ffmpeg
    pkgs.aria2
    pkgs.qbittorrent
  ];
  imports = [
    ./modules
  ];
  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "25.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  programs.starship = {
    enable = true;
    enableBashIntegration = true;
  };
  programs.bash = {
    enable = true;
    enableCompletion = true;
    shellAliases = {
      "ls" = "eza --icons -la";
      "ltree" = "eza --icons --tree";
      "ll" = "eza -lh --icons";
      "yt" = "yt-dlp $1 --downloader aria2c --remux mp4";
    };
  };
}

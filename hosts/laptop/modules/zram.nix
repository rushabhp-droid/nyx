{ ... }:
{
  # zram
  zramSwap = {
    enable = true;
    priority = 100;
    memoryPercent = 100;
    swapDevices = 1;
    algorithm = "zstd";
  };
}

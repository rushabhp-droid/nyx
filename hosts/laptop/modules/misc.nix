{ ... }:
{
  environment.pathsToLink = [ "/share/bash-completion" ];
  powerManagement = {
    enable = true;
    cpuFreqGovernor = "schedutil";
  };
}

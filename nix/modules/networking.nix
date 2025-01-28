{
  networking.hostName = "workstation";

  networking.networkmanager.enable = true;

  networking.nat = {
    enable = true;
    externalInterface = "enp3s0";
    internalInterfaces = [ "tun0" ];
  };
}

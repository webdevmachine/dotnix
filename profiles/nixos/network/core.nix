{
  networking = {
    useDHCP = true;
    useNetworkd = true;
  };

  systemd.network = {
    enable = true;
    wait-online.anyInterface = true;
  };
}

{
  networking.wireless.iwd = {
    enable = true;
    settings.General.UseDefaultInterface = true;
  };

  systemd.network.networks."20-wireless" = {
    matchConfig.Type = "wlan";
    networkConfig.DHCP = "yes";
    dhcpV4Config.RouteMetric = 2048;
    ipv6AcceptRAConfig.RouteMetric = 2048;
  };

  environment.persistence."/nix/persist".directories = [ "/var/lib/iwd" ];
}

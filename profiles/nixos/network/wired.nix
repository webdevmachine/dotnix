{
  systemd.network.networks."20-wired" = {
    matchConfig.Type = "ether";
    networkConfig.DHCP = "yes";
    dhcpV4Config.RouteMetric = 1024;
    ipv6AcceptRAConfig.RouteMetric = 1024;
  };
}

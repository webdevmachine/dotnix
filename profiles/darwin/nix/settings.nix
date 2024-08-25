{
  nix.settings = {
    allowed-users = [
      "root"
      "@admin"
    ];
    trusted-users = [
      "root"
      "@admin"
    ];
  };

  services.nix-daemon.enable = true;
}

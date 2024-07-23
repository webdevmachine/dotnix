{
  nix.settings = {
    allowed-users = [
      "root"
      "@wheel"
    ];
    trusted-users = [
      "root"
      "@wheel"
    ];
  };
}

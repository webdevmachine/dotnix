{
  services.openssh = {
    enable = true;
    hostKeys = [
      {
        type = "ed25519";
        path = "/nix/persist/etc/ssh/identity";
        comment = "identity";
        rounds = 100;
      }
    ];
  };

  environment.persistence."/nix/persist".files = [
    "/etc/ssh/identity"
    "/etc/ssh/identity.pub"
  ];
}

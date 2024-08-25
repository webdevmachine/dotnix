{
  imports = [
    ../../profiles/common/nix/arguments.nix
    ../../profiles/common/nix/settings.nix
  ];

  networking.hostName = "NS-WRF00K0P79";
  nixpkgs.hostPlatform = "aarch64-darwin";
  system.stateVersion = 4;
}

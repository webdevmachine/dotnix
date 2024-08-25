{
  imports = [
    ../../profiles/common/nix/arguments.nix
    ../../profiles/common/nix/settings.nix
    ../../profiles/darwin/nix/settings.nix

    ../../profiles/system/users/core.nix
    ../../profiles/darwin/users/core.nix
  ];

  networking.hostName = "NS-WRF00K0P79";
  nixpkgs.hostPlatform = "aarch64-darwin";
  system.stateVersion = 4;
}

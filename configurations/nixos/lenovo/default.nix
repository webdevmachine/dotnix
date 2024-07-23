{
  imports = [
    ../../../profiles/common/nix/arguments.nix
    ../../../profiles/nixos/nix/persistence.nix
    ../../../profiles/common/nix/settings.nix
    ../../../profiles/nixos/nix/settings.nix

    ./filesystem.nix
    ./hardware/cpu.nix
    ./hardware/gpu.nix
    ./hardware/laptop.nix
    ./hardware/ssd.nix
  ];

  networking.hostName = "lenovo";
  nixpkgs.hostPlatform = "x86_64-linux";
  system.stateVersion = "24.11";
}

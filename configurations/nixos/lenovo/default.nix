{
  imports = [
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

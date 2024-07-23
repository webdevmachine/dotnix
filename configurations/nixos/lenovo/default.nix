{
  imports = [
    ../../../profiles/nixos/boot/efi.nix
    ../../../profiles/nixos/boot/kernel.nix
    ../../../profiles/nixos/boot/secure.nix
    ../../../profiles/nixos/boot/silent.nix

    ../../../profiles/nixos/hardware/audio.nix
    ../../../profiles/nixos/hardware/firmware.nix
    ../../../profiles/nixos/hardware/graphics.nix
    ../../../profiles/nixos/hardware/laptop.nix

    ../../../profiles/nixos/network/core.nix

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

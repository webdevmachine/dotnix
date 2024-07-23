{ inputs, ... }:
{
  imports = [ inputs.nixos-hardware.nixosModules.common-pc-laptop-ssd ];

  boot.initrd.availableKernelModules = [
    "ahci"
    "sd_mod"
  ];
}

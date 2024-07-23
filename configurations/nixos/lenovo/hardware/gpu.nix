{ inputs, ... }:
{
  imports = [
    inputs.nixos-hardware.nixosModules.common-gpu-intel
    inputs.nixos-hardware.nixosModules.common-gpu-nvidia-disable
  ];

  hardware.intel-gpu-tools.enable = true;
}

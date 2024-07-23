{ inputs, ... }:
{
  imports = [ inputs.nixos-hardware.nixosModules.common-cpu-intel-cpu-only ];

  boot.kernelParams = [
    "i915.enable_fbc=1"
    "i915.enable_guc=3"
    "i915.enable_psr=1"
  ];
}

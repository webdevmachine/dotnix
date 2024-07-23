{ inputs, ... }:
{
  imports = [ inputs.nixos-hardware.nixosModules.common-pc-laptop ];

  powerManagement = {
    enable = true;
    powertop.enable = true;
  };

  services = {
    thermald.enable = true;
    tlp.enable = true;
  };
}

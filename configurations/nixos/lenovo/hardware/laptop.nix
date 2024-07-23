{ inputs, ... }:
{
  imports = [ inputs.nixos-hardware.nixosModules.common-pc-laptop-acpi_call ];

  powerManagement.cpuFreqGovernor = "powersave";
}

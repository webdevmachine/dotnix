{ inputs, ... }:
{
  imports = [ inputs.impermanence.nixosModules.impermanence ];

  environment.persistence."/nix/persist" = {
    directories = [
      "/var/lib/nixos"
      "/var/log"
    ];
    files = [ "/etc/machine-id" ];
  };
}

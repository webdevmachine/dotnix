{ inputs, ... }:
{
  imports = [ inputs.lanzaboote.nixosModules.lanzaboote ];

  boot = {
    lanzaboote = {
      enable = true;
      pkiBundle = "/etc/secureboot";
    };

    loader.systemd-boot.editor = false;
  };

  environment.persistence."/nix/persist".directories = [ "/etc/secureboot" ];
}

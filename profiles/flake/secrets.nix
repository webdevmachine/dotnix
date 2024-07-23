{ self, inputs, ... }:
{
  imports = [ inputs.agenix-rekey.flakeModule ];

  perSystem =
    { config, pkgs, ... }:
    {
      agenix-rekey.nodes =
        self.nixosConfigurations // self.darwinConfigurations // self.homeConfigurations;

      devshells.default = {
        commands = [
          {
            inherit (config.agenix-rekey) package;
            help = "age-encrypted secrets for NixOS";
          }
        ];
        devshell.packages = [ pkgs.coreutils ];
      };
    };
}

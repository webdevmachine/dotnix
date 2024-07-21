{ inputs, ... }:
{
  imports = [ inputs.treefmt-nix.flakeModule ];

  perSystem =
    { config, pkgs, ... }:
    {
      treefmt = {
        projectRootFile = "flake.nix";

        package = pkgs.treefmt2;

        programs = {
          prettier.enable = true;
        };
      };

      devshells.default.commands = [ { package = config.treefmt.build.wrapper; } ];
    };
}

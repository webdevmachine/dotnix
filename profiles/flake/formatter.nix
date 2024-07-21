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

          deadnix.enable = true;
          statix.enable = true;
          nixfmt.enable = true;
        };

        settings.formatter = {
          deadnix.priority = 1;
          statix.priority = 2;
          nixfmt.priority = 3;
        };
      };

      devshells.default.commands = [ { package = config.treefmt.build.wrapper; } ];
    };
}

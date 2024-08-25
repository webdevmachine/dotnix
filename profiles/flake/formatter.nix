{ inputs, ... }:
{
  imports = [ inputs.treefmt-nix.flakeModule ];

  perSystem =
    { config, pkgs, ... }:
    {
      treefmt = {
        inherit (config.flake-root) projectRootFile;
        package = pkgs.treefmt2;
        programs = {
          prettier.enable = true;
        };
      };

      devshells.default.commands = [
        {
          package = config.treefmt.build.wrapper;
          category = "linters";
          help = "runs code formatters";
        }
      ];
    };
}

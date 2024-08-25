{ inputs, ... }:
let
  inherit (inputs.nix-darwin.lib) darwinSystem;
in
{
  flake = {
    darwinConfigurations = {
      workbook = darwinSystem {
        modules = [ ../../systems/workbook ];
      };
    };
  };
}

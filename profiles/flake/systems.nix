{ inputs, ... }:
let
  inherit (inputs.nix-darwin.lib) darwinSystem;

  specialArgs = {
    inherit inputs;
  };
in
{
  flake = {
    darwinConfigurations = {
      workbook = darwinSystem {
        inherit specialArgs;
        modules = [ ../../systems/workbook ];
      };
    };
  };
}

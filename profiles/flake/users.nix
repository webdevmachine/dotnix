{ self, inputs, ... }:
let
  inherit (inputs.home-manager.lib) homeManagerConfiguration;

  extraSpecialArgs = {
    inherit inputs;
  };
in
{
  flake = {
    homeConfigurations = {
      "webdevmachine@workbook" = homeManagerConfiguration {
        inherit extraSpecialArgs;
        inherit (self.darwinConfigurations.workbook) pkgs;
        modules = [ ../../users/webdevmachine/workbook.nix ];
      };
    };
  };
}

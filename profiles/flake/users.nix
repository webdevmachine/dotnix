{ self, inputs, ... }:
let
  inherit (inputs.home-manager.lib) homeManagerConfiguration;
in
{
  flake = {
    homeConfigurations = {
      "webdevmachine@workbook" = homeManagerConfiguration {
        inherit (self.darwinConfigurations.workbook) pkgs;
        modules = [ ../../users/webdevmachine/workbook.nix ];
      };
    };
  };
}

{ self, inputs, ... }:
let
  inherit (inputs.nixpkgs.lib) nixosSystem;

  nixosConfiguration =
    { configuration }:
    nixosSystem {
      modules = [ configuration ];
      specialArgs = {
        inherit self inputs;
      };
    };
in
{
  flake = {
    nixosConfigurations = {
      lenovo = nixosConfiguration { configuration = ../../configurations/nixos/lenovo; };
    };
    darwinConfigurations = { };
    homeConfigurations = { };
  };
}

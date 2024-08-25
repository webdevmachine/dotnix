{ inputs, ... }:
{
  programs.zsh.enable = true;
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    extraSpecialArgs = {
      inherit inputs;
    };
  };
}

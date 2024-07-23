{ inputs, ... }:
{
  imports = [ inputs.home-manager.nixosModules.home-manager ];

  users.mutableUsers = false;
}

{ inputs, ... }:
{
  imports = [ inputs.devshell.flakeModule ];

  perSystem.devshells.default.name = "dotnix";
}

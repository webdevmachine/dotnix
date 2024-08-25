{ inputs, ... }:
{
  imports = [
    inputs.flake-root.flakeModule
    inputs.devshell.flakeModule
  ];

  perSystem =
    { config, ... }:
    {
      devshells.default = {
        name = "dotnix devshell";
        devshell.startup.flake-root.text = config.flake-root.devShell.shellHook;
      };
    };
}

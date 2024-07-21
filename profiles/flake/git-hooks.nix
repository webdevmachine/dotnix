{ inputs, ... }:
{
  imports = [ inputs.git-hooks.flakeModule ];

  perSystem =
    { config, ... }:
    {
      pre-commit.settings.hooks = { };

      devshells.default = {
        commands = [ { inherit (config.pre-commit.settings) package; } ];
        devshell.startup.pre-commit.text = config.pre-commit.devShell.shellHook;
      };
    };
}

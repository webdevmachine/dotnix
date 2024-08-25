{ inputs, ... }:
{
  imports = [ inputs.git-hooks.flakeModule ];

  perSystem =
    { config, ... }:
    {
      pre-commit.settings.hooks = { };

      devshells.default = {
        devshell.startup.pre-commit.text = config.pre-commit.devShell.shellHook;
        commands = [
          {
            inherit (config.pre-commit.settings) package;
            category = "linters";
            help = "runs pre-commit checks";
          }
        ];
      };
    };
}

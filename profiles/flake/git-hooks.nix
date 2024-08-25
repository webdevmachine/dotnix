{ inputs, ... }:
{
  imports = [ inputs.git-hooks.flakeModule ];

  perSystem =
    { config, ... }:
    {
      pre-commit.settings.hooks = {
        check-added-large-files.enable = true;
        check-case-conflicts.enable = true;
        check-symlinks.enable = true;
        detect-private-keys.enable = true;
        end-of-file-fixer.enable = true;
        fix-byte-order-marker.enable = true;
        mixed-line-endings.enable = true;
        trim-trailing-whitespace.enable = true;
        typos.enable = true;

        editorconfig-checker.enable = true;
        treefmt.enable = true;

        conform.enable = true;
        check-merge-conflicts.enable = true;
        forbid-new-submodules.enable = true;

        flake-checker.enable = true;
        nil.enable = true;

        check-executables-have-shebangs.enable = true;
        check-shebang-scripts-are-executable.enable = true;
      };

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

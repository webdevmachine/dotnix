{ pkgs, ... }:
{
  programs.zsh = {
    plugins = [
      {
        name = "vi-mode";
        file = "share/zsh-vi-mode/zsh-vi-mode.plugin.zsh";
        src = pkgs.zsh-vi-mode;
      }
    ];

    sessionVariables = {
      ZVM_INIT_MODE = "sourcing";
      ZVM_VI_SURROUND_BINDKEY = "s-prefix";
    };
  };
}

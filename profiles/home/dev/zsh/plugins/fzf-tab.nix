{ pkgs, ... }:
{
  programs.zsh.plugins = [
    {
      name = "fzf-tab";
      file = "share/fzf-tab/fzf-tab.plugin.zsh";
      src = pkgs.zsh-fzf-tab;
    }
  ];
}

{ pkgs, ... }:
{
  programs.zsh.plugins = [
    {
      name = "autopair";
      file = "share/zsh/zsh-autopair/autopair.zsh";
      src = pkgs.zsh-autopair;
    }
  ];
}

{ pkgs, ... }:
{
  programs.zsh.plugins = [
    {
      name = "fast-syntax-highlighting";
      file = "share/zsh/site-functions/fast-syntax-highlighting.plugin.zsh";
      src = pkgs.zsh-fast-syntax-highlighting;
    }
  ];
}

{ pkgs, ... }:
{
  programs.zsh.plugins = [
    {
      name = "autosuggestions";
      file = "share/zsh-autosuggestions/zsh-autosuggestions.zsh";
      src = pkgs.zsh-autosuggestions;
    }
  ];
}

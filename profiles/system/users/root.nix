{ pkgs, ... }:
{
  users.users.root = {
    createHome = true;
    shell = pkgs.zsh;
  };
}

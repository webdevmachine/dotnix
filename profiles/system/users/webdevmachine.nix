{ pkgs, ... }:
{
  users.users.webdevmachine = {
    createHome = true;
    shell = pkgs.zsh;
  };
}

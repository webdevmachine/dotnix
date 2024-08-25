{ pkgs, ... }:
{
  programs.zsh.plugins = [
    {
      name = "spaceship-prompt-vi-mode";
      file = "";
      src = ./spaceship-prompt-vi-mode.sh;
    }
    {
      name = "spaceship-prompt";
      file = "share/zsh/site-functions/prompt_spaceship_setup";
      src = pkgs.spaceship-prompt;
    }
  ];

  xdg.configFile."spaceship.zsh".source = ./spaceship-prompt.sh;
}

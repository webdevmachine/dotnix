{
  imports = [
    ./plugins/autopair.nix
    ./plugins/spaceship-prompt.nix
    ./plugins/vi-mode.nix
  ];

  programs.zsh = {
    enable = true;
    history = {
      extended = true;
      expireDuplicatesFirst = true;
      ignoreAllDups = true;
      ignoreSpace = true;
      share = true;
      save = 50000;
      size = 50000;
    };
  };
}

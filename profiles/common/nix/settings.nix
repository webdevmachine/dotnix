{
  inputs,
  lib,
  pkgs,
  ...
}:
let
  inherit (lib.attrsets) mapAttrs mapAttrsToList setAttrByPath;
in
{
  nix = {
    package = pkgs.nix;

    settings = {
      accept-flake-config = true;
      builders-use-substitutes = true;
      experimental-features = [
        "flakes"
        "nix-command"
        "no-url-literals"
        "repl-flake"
      ];
      keep-going = true;
      keep-outputs = true;
      log-lines = 20;
      warn-dirty = false;
    };

    nixPath = mapAttrsToList (name: _: "${name}=flake:${name}") inputs;
    registry = mapAttrs (_: setAttrByPath [ "flake" ]) inputs;
  };

  nixpkgs.config.allowUnfree = true;
}

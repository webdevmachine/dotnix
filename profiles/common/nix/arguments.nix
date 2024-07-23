{
  inputs,
  lib,
  pkgs,
  ...
}:
let
  inherit (lib.attrsets) mapAttrs;
in
{
  _module.args.inputs' = mapAttrs (_: mapAttrs (_: value: value.${pkgs.system} or { })) inputs;
}

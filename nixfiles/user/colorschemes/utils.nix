{ lib, ...}:
let
  inherit (lib.strings) removePrefix;
in
{
  transparentify = color:
    "#99${removePrefix "#" color}";

  brighter = color:
    color;

  dimmer = color:
    color;
}

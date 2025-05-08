{ lib, ... }:
{
  options.theme = lib.mkOption {
    type = lib.types.str;
    default = "radium";
    description = "Theme";
  };
  imports = [
    ./globals.nix
    ./options.nix
    ./clipboard.nix
    ./keymaps.nix
    ./plugins
    ./themes
  ];
}

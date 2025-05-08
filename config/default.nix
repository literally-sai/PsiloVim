{ lib, ... }:
{
  options.theme = lib.mkOption {
    type = lib.types.str;
    default = "far";
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

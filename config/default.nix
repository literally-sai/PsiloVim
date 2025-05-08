{
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

    imports = [
      ./globals.nix
      ./options.nix
      ./clipboard.nix
      ./keymaps.nix
      ./plugins
      ./themes
    ];

    theme = "cyberdream";

    extraConfigLua = builtins.readFile ./extraConfig.lua;
  };
}

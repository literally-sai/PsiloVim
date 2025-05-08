{
  description = "My PsiloVim Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      nixvim,
      flake-utils,
      ...
    }:
    flake-utils.lib.eachSystem [ "aarch64-linux" "x86_64-linux" ] (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
        nixvim' = nixvim.legacyPackages.${system};
        nixvimModule = {
          imports = [ ./config ];
        };
        nvim = nixvim'.makeNixvimWithModule {
          inherit pkgs;
          module = nixvimModule;
        };
        
        nvimWithMeta = nvim.overrideAttrs (old: {
          meta = (old.meta or {}) // {
            description = "PsiloVim: A custom Neovim configuration with plugins and themes";
            longDescription = ''
              PsiloVim provides a preconfigured Neovim setup with plugins like Telescope, LSP,
              and a customizable theme system, optimized for development workflows.
            '';
            homepage = "https://github.com/literally-sai/Psilovim";
            license = pkgs.lib.licenses.mit;
            maintainers = [ "literally-sai" ];
          };
        });
      in
      {
        packages.default = nvimWithMeta;
      }
    );
}
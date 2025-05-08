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
      in
      {
        packages.default = nvim;
      }
    );
}

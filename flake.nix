{
  description = "NixVim Configuration";

  inputs = {
    unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    nixvim.url = "github:nix-community/nixvim";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    nixvim,
    flake-utils,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      #nixvimLib = nixvim.lib.${system};
      pkgs = nixpkgs.legacyPackages.${system};

      nixvim' = nixvim.legacyPackages.${system}.makeNixvimWithModule {
        inherit pkgs;
        module = import ./nixvim-config {inherit pkgs;};
      };
    in {
      packages = {default = nixvim';};

      apps = {
        default = {
          type = "app";
          program = "${nixvim'}/bin/nvim";
        };
      };
    });
}

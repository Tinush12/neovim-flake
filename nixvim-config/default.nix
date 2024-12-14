{ ... }: {
  imports = [
    ./configs.nix
    ./theme.nix
    ./search.nix
    ./keymaps.nix
    ./plugins.nix
    ./lsp.nix
    ./debugging.nix
  ];
}

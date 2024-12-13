# NixVim - NeoVim Configuration

## Basic NeoVim Setup
This is a basic neovim setup to be included into a NixOS Configuration or to run standalone.

## How to include to NixOS
Add the input to a flake:
```nix
{
 inputs = {
    nixvim-flake.url = "github:Tinush12/neovim-flake";
 };
}
```

Then add the included input to use with:
```
{ inputs ... }:

{
  # NixOS
  environment.systemPackages = [ inputs.nixvim-flake.packages.${system}.default ];

  # Home Manager
  home.packages = [ inputs.nixvim-flake.packages.${system}.default ];
}
```

## How to run NeoVim standalone

```bash
nix run 'github:Tinush12/neovim-flake'
```

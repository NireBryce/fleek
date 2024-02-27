{ pkgs, misc, ... }: {
  home.packages = [
  #nix
    pkgs.rnix-lsp
    pkgs.nixfmt
  ]
}

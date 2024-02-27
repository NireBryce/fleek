{ pkgs, misc, ... }: {
  home.packages = [
    pkgs.rnix-lsp
    pkgs.nixfmt
  ]
}

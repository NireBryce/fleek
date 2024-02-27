{ pkgs, misc, ... }: {
# Where the nix lives
  home.packages = [
    pkgs.rnix-lsp
    pkgs.nixfmt
  ];
}

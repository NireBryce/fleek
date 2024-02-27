{ pkgs, misc, ... }: {
# Where the nix packages live
  home.packages = [
    pkgs.rnix-lsp
    pkgs.nixfmt
  ];
}

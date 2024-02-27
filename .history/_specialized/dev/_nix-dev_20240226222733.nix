{ pkgs, misc, ... }: {
# Where the nix packages live
  home.packages = [
    rnix-lsp
    nixfmt
  ];
}

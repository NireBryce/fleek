{ pkgs, misc, ... }: {
# Where the nix  packageslives
  home.packages = [
    pkgs.rnix-lsp
    pkgs.nixfmt
  ];
}

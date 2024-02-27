{ pkgs, misc, ... }: {
# Where the nix  packageslive
  home.packages = [
    pkgs.rnix-lsp
    pkgs.nixfmt
  ];
}

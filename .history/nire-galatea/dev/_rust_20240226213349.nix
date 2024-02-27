    { pkgs, misc, ... }: {
  home.packages = [
    pkgs.rnix-lsp
    pkgs.nixfmt
  ];
}
pkgs.rustc
    # pkgs.cargo
    # pkgs.cargo-update
    # pkgs.cargo-binstall

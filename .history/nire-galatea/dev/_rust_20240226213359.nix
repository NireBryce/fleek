    { pkgs, misc, ... }: {
  home.packages = [
    pkgs.rnix-lsp
    pkgs.rustc
    # pkgs.cargo
    # pkgs.cargo-update
    # pkgs.cargo-binstall

  ];
}

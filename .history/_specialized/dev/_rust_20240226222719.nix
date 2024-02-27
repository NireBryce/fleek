{ pkgs, misc, ... }: {
# Where the rust packages live
  home.packages = [
    pkgs.rustc
    # pkgs.cargo
    # pkgs.cargo-update
    # pkgs.cargo-binstall
  ];
}

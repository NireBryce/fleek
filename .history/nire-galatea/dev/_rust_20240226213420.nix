{ pkgs, misc, ... }: {
# Where the rust lives
  home.packages = [
    pkgs.rustc
    # pkgs.cargo
    # pkgs.cargo-update
    # pkgs.cargo-binstall
  ];
}

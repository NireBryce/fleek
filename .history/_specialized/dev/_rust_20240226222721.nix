{ pkgs, misc, ... }: {
# Where the rust packages live
  home.packages = [
    rustc
    # cargo
    # cargo-update
    # cargo-binstall
  ];
}

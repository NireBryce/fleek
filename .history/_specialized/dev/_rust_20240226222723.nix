{ pkgs, misc, ... }: {
# Where the rust packages live
  home.packages w = [
    rustc
    # cargo
    # cargo-update
    # cargo-binstall
  ];
}

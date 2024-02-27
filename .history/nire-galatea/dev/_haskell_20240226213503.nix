{ pkgs, misc, ... }: {
# Where the haskell packages live
  home.packages = [
    pkgs.ghc # haskell compiler
    pkgs.haskell-language-server
  ];
}

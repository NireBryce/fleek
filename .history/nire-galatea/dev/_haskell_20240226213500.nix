{ pkgs, misc, ... }: {
# Where the haskell live
  home.packages = [
    pkgs.ghc # haskell compiler
    pkgs.haskell-language-server
  ];
}

{ pkgs, misc, ... }: {
# Where the haskell lives
  home.packages = [
    pkgs.ghc # haskell compiler
    pkgs.haskell-language-server
  ];
}

{ pkgs, misc, ... }: {
  home.packages = [
  pkgs.ghc # haskell compiler
    pkgs.haskell-language-server
  ];
}

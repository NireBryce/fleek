{ pkgs, misc, ... }: {
  home.packages = with pkgs; [
# kde utilities just in case they aren't in nixOS' metapackage
    qt6.qttools
    bismuth
  ];
  
}

{ pkgs, misc, ... }: {
# where the python packages live
  home.packages = [
    pkgs.python3
    pkgs.ruff # python linter
  ];
}

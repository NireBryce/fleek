{ pkgs, misc, ... }: {
  # where the python lives
  home.packages = [
    pkgs.python3
    pkgs.ruff # python linter
  ];
}

{ pkgs, misc, ... }: {
  home.packages = [
    pkgs.python3
    pkgs.ruff # python linter
  ];
}

{ pkgs, misc, ... }: {
# where the python packages live
  home.packages = [
    python3
    ruff # python linter
    ruff-lsp
  ];
}

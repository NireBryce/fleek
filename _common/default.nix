{...}:
{
  imports = [
  ./_packages.nix
  ./_managed-configs
  ./_services.nix
  # ./_sh.nix # dunno what this does, it's extracted from fleek
  ];
  # TODO: better way to do the dotfiles, check your system configs.
}

{ pkgs, misc, ... }: {
  # DO NOT EDIT: This file is managed by fleek. Manual changes will be overwritten.
 home.sessionPath = [ 
    "/usr/local"
    "/usr/bin"
    "/nix/var/nix/profiles/default/bin"
    "$HOME/bin"
    "$HOME/.local/bin"
    "$HOME/.nix-profile/bin"
    "$HOME/.config/zi/bin"
    "$HOME/.config/emacs/bin"
    "$HOME/.cargo/bin"
 ];
}

{ pkgs, misc, ... }: {
  # DO NOT EDIT: This file is managed by fleek. Manual changes will be overwritten.
   home.shellAliases = {
    "fleek-custom" = "micro ~/.local/share/fleek/nire-lysithea/custom.nix";
    
    "fleek-edit" = "micro ~/.fleek.yml";
    
    "fleek-user" = "micro ~/.local/share/fleek/user..nix";
    
    "fleeks" = "cd ~/.local/share/fleek";
    
    "gitssh" = "export GIT_SSH=/usr/bin/ssh";
    
    "latest-fleek-version" = "nix run https://getfleek.dev/latest.tar.gz -- version";
    
    "update-fleek" = "nix run https://getfleek.dev/latest.tar.gz -- update";
    
    # bat --plain for unformatted cat
    catp = "bat -P";
    
    # replace cat with bat
    cat = "bat";
    };
}

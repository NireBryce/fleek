{ config, pkgs, misc, ... }: {
  # DO NOT EDIT: This file is managed by fleek. Manual changes will be overwritten.
  nixpkgs = {
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = (_: true);
      
      
    };
  };

  
  # managed by fleek, modify ~/.fleek.yml to change installed packages
  
  # packages are just installed (no configuration applied)
  # programs are installed and configuration applied to dotfiles
  home.packages = [
    # user selected packages
    pkgs.asdf-vm
    pkgs.glfw
    pkgs.atuin
    pkgs.bash-completion
    pkgs.bat
    pkgs.broot
    pkgs.btop
    pkgs.direnv
    pkgs.bitwarden
    pkgs.cargo
    pkgs.cargo-update
    pkgs.cargo-binstall
    pkgs.cheat
    pkgs.curl
    pkgs.du-dust
    pkgs.duf
    pkgs.emacs
    pkgs.emacsPackages.doom
    pkgs.entr
    pkgs.eza
    pkgs.fd
    pkgs.fzf
    pkgs.gh
    pkgs.ghc
    pkgs.git
    pkgs.haskell-language-server
    pkgs.lazydocker
    pkgs.lazygit
    pkgs.mc
    pkgs.mlocate
    pkgs.mosh
    pkgs.nix-zsh-completions
    pkgs.openssh
    pkgs.python3
    pkgs.ruby
    pkgs.ruff
    pkgs.ripgrep
    pkgs.rustc
    pkgs.topgrade
    pkgs.tldr
    pkgs.tree
    pkgs.vscode
    pkgs.wget
    pkgs.xplr
    pkgs.zellij
    pkgs.zi
    pkgs.zoxide
    pkgs.tailscale
    pkgs.xclip
    pkgs.xsel
    pkgs.wl-clipboard
    pkgs.kitty
    # Fleek Bling
    pkgs.git
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];
  fonts.fontconfig.enable = true; 
  home.stateVersion =
    "22.11"; # To figure this out (in-case it changes) you can comment out the line and see what version it expected.
  programs.home-manager.enable = true;
}

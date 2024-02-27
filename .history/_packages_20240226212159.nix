{ pkgs, misc, ... }: {
  # FEEL FREE TO EDIT: This file is NOT managed by fleek. 
 nixpkgs = {
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = (_: true);
      
      
    };
  };

  programs.micro = {
    enable = true;
    settings = {
      autoclose = false;
      backup = false;
      autosu = true;
      cursorline  = true;
      colorscheme = "dukeubuntu-tc";
      difgutter = true;
      eofnewline = true;
      fastdirty = true;
      ignorecase = false;
      keyenu = true;
      mkparents = true;
      savehistory = false;
      tabsize = 2;
      tsbstospaces = true;
      colorcolumn = 81;
      indentchar = "·";
      multiopen = "hsplit";
      parsecursor = true;
      linter = true;
      comment = true;
      tabstospaces = true;
    };
  };
  
  
  home.packages = [
    # user selected packages
    pkgs.gnumake
    pkgs.topgrade

    pkgs.atuin
    pkgs.bash-completion
    pkgs.bat
    pkgs.broot
    pkgs.btop
    pkgs.direnv
    pkgs.bitwarden
    # pkgs.cargo
    # pkgs.cargo-update
    # pkgs.cargo-binstall
    pkgs.cheat # cheat.sh
    pkgs.curl
    pkgs.du-dust # better du
    pkgs.duf # disk usage/free
    pkgs.emacs
    pkgs.emacsPackages.doom # doom emacs
    pkgs.entr 
    pkgs.eza # ls but better, exa fork
    pkgs.fd # better find
    pkgs.fzf # Fuzzy Finder
    pkgs.gh # github-cli
    pkgs.git 
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
    pkgs.tailscale
    pkgs.xclip
    pkgs.xsel
    pkgs.wl-clipboard
    pkgs.kitty
    pkgs.magic-wormhole
    pkgs.github-desktop
    pkgs.syncthing
    # terminal

    # shell utils
    pkgs.xplr
    pkgs.zellij
    pkgs.zi
    pkgs.zoxide

    #nix
    pkgs.rnix-lsp
    pkgs.nixfmt

    # dev
    pkgs.ghc # haskell compiler
    pkgs.haskell-language-server
    # Fleek Bling
    pkgs.git
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];
  fonts.fontconfig.enable = true; 
  home.stateVersion =
    "22.11"; # To figure this out (in-case it changes) you can comment out the line and see what version it expected.
  programs.home-manager.enable = true;
}
}

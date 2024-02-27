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
    pkgs.topgrade

    
    # services
    pkgs.mosh
    pkgs.openssh
    pkgs.tailscale
    pkgs.syncthing
    
    # editors
    pkgs.neovim
    pkgs.emacs
    pkgs.emacsPackages.doom # doom emacs
    
    # terminal
    pkgs.kitty

    # system
    pkgs.gnumake
    pkgs.mlocate
    pkgs.wl-clipboard
    pkgs.xclip
    pkgs.xsel

    # "core utils"
    pkgs.topgrade
    pkgs.git 
    pkgs.gh # github-cli
    pkgs.curl
    pkgs.wget
    pkgs.ripgrep
    pkgs.tree
    pkgs.duf # disk usage/free
    pkgs.du-dust # better du
    pkgs.eza # ls but better, exa fork
    pkgs.fd # better find
    pkgs.magic-wormhole

    # quality of life
    pkgs.zellij
    pkgs.mc # midnight commander dual pane file browser
    pkgs.lazygit # git interface
    pkgs.tldr
    pkgs.cheat # cheat.sh
    pkgs.lazydocker # interactive docker

    # shell utils
    pkgs.atuin # cross-device shell history
    pkgs.bash-completion
    pkgs.bat # better `cat`
    pkgs.bitwarden # password manager
    pkgs.broot #
    pkgs.btop
    pkgs.direnv
    pkgs.entr 
    pkgs.fzf # Fuzzy Finder
    pkgs.nix-zsh-completions
    pkgs.xplr
    pkgs.zi
    pkgs.zoxide

    

    # dev misc
    pkgs.vscode
    pkgs.github-desktop
    
    
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];
  fonts.fontconfig.enable = true; 
  home.stateVersion =
    "22.11"; # To figure this out (in-case it changes) you can comment out the line and see what version it expected.
  programs.home-manager.enable = true;
}
}

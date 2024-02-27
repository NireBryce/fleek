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
  
  
  home.packages = with pkgs; [
    # services
    mosh               # ssh but more async
    # openssh
    # tailscale
    # syncthing
    

    # editors
    neovim
    emacs
    emacsPackages.doom   # doom emacs
    
    # terminal
    kitty                # graphically-accelerated terminal

    # system
    gnumake
    mlocate              # find things the old way
    wl-clipboard         # wayland clipboard
    xclip                # X11 clipboard
    xsel                 # other half of xclip
    auto-cpufreq

    # "core utils"
    topgrade             # upgrade all the things
    git 
    gh                   # github-cli
    curl
    wget
    ripgrep
    tree
    duf                  # disk usage/free
    du-dust              # better du
    eza                  # ls but better, exa fork
    fd                   # better find
    magic-wormhole

    # quality of life
    zellij               # terminal multiplexer
    mc                   # dual pane file browser
    lazygit              # git interface
    tldr                 # nicer `man`
    cheat                # cheat.sh
    lazydocker           # docker, interactive

    # shell utils
    neofetch
    atuin                # cross-device shell history
    bash-completion
    bat                  # better `cat`
    broot 
    btop                 # better htop
    direnv               # manage per-directory environment variables
    entr 
    fzf                  # Fuzzy Finder
    nix-zsh-completions
    xplr                 # file browser
    zi                   # zsh plugin manager
    zoxide               # better `cd`

    (nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];
  fonts.fontconfig.enable = true; 
  home.stateVersion =
    "22.11"; # To figure this out (in-case it changes) you can comment out the line and see what version it expected.
  programs.home-manager.enable = true;
}
}

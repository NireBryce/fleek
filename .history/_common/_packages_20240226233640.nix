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
    mosh                 # ssh but more async
    
    # these next few are covered in the flakes for the system
    # openssh
    # tailscale
    # syncthing
    

  # env
    asdf-vm              # proglang version manager
  # editors
    neovim               # Modern vim
    emacs
    emacsPackages.doom   # doom emacs
    nanorc               # fallback with good nix syntax highlighting
    
  # terminal
    kitty                # graphically-accelerated terminal

  # system
    gnumake
    mlocate              # find things the old way
    wl-clipboard         # wayland clipboard
    wl-clipboard-x11     # should replace xsel and xclip
    # xclip                # X11 clipboard
    # xsel                 # other half of xclip
    auto-cpufreq

  # "core utils"
    topgrade             # upgrade all the things
    git 
    gh                   # github-cli
    curl
    wget
    ripgrep              # rg, better grep
    tree
    duf                  # disk usage/free
    du-dust              # better du
    eza                  # ls but better, exa fork
    fd                   # better find
    magic-wormhole

    # quality of life
    cheat                # cheat.sh
    lazydocker           # docker, interactive
    lazygit              # git interface
    mc                   # dual pane file browser
    tldr                 # nicer `man`
    zellij               # terminal multiplexer

    # shell utils
    atuin                # cross-device shell history
    bash-completion
    bat                  # better `cat`
    bat-extras.batdiff
    bat-extras.batgrep
    bat-extras.batman
    bat-extras.batpipe
    bat-extras.batwatch
    bat-extras.prettybat
    broot 
    btop                 # better htop
    diffutils
    direnv               # manage per-directory environment variables
    entr 
    fzf                  # Fuzzy Finder
    neofetch
    nix-zsh-completions
    # xplr                 # file browser
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
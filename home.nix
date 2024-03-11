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
    pkgs.atuin
    pkgs.auto-cpufreq
    pkgs.bash-completion
    pkgs.bat-extras.batdiff
    pkgs.bat-extras.batgrep
    pkgs.bat-extras.batman
    pkgs.bat-extras.batpipe
    pkgs.bat-extras.batwatch
    pkgs.bat-extras.prettybat
    pkgs.bat
    pkgs.broot
    pkgs.btop
    pkgs.cheat
    pkgs.curl
    pkgs.diffutils
    pkgs.direnv
    pkgs.du-dust
    pkgs.duf
    pkgs.emacs
    pkgs.emacsPackages.doom
    pkgs.entr
    pkgs.eza
    pkgs.fd
    pkgs.fzf
    pkgs.gh
    pkgs.git
    pkgs.gnumake
    pkgs.lazydocker
    pkgs.lazygit
    pkgs.libinput
    pkgs.magic-wormhole
    pkgs.mc
    pkgs.mlocate
    pkgs.mosh
    pkgs.nano
    pkgs.nanorc
    pkgs.neofetch
    pkgs.neovim
    pkgs.nix-zsh-completions
    pkgs.obs-studio
    pkgs.ripgrep
    pkgs.tldr
    pkgs.topgrade
    pkgs.tree
    pkgs.unzip
    pkgs.wget
    pkgs.wl-clipboard-x11
    pkgs.wl-clipboard
    pkgs.zellij
    pkgs.zi
    pkgs.zip
    pkgs.zoxide
    pkgs.obsidian
    pkgs.keybase-gui
    pkgs.keybase
    pkgs.kitty
    pkgs.kitty-img
    pkgs.telegram-desktop
    pkgs.discord
    pkgs.wire-desktop
    pkgs.signal-desktop
    pkgs.zoom-us
    pkgs.emote
    pkgs.input-leap
    pkgs.helvum
    pkgs.piper
    pkgs.qmk
    pkgs.vlc
    pkgs.gimp
    pkgs.libreoffice-qt
    pkgs.p7zip
    pkgs.vscode-fhs
    pkgs.github-desktop
    pkgs.wayland-utils
    pkgs.vulkan-tools
    pkgs.glxinfo
    pkgs.clinfo
    pkgs.ggshield
    pkgs.heroic
    pkgs.csvkit
    pkgs.python312Packages.pandas
    pkgs.python311Packages.pandas
    # Fleek Bling
    pkgs.git
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];
  fonts.fontconfig.enable = true; 
  home.stateVersion =
    "22.11"; # To figure this out (in-case it changes) you can comment out the line and see what version it expected.
  programs.home-manager.enable = true;
}

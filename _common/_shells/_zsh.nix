{ lib, config, pkgs, misc, ... }: 
{
  # FEEL FREE TO EDIT: This file is NOT managed by fleek.


  # Notes:
    # If you get `zsh side` errors, delete ~/.zcompdump and ~/.config/zsh/.zcompdump and run `zi update`
    # installing multiple highlighters causes "zsh_zle-highlight-buffer-p:4: permission denied error
    # in this case it was trapd00r/zsh-syntax-highlighting-filetypes which highlights more than filetypes turns out

  programs = { # zsh specific, it dedups them if they're already enabled
    dircolors.enable = true; 
    dircolors.enableZshIntegration = true;
    # atuin.enableZshIntegration = true;
    direnv.enableZshIntegration = true;
    # fzf.enableZshIntegration = true;
    zellij.enableZshIntegration = true;
    # zoxide.enableZshIntegration = true; # done in zsh config
  };

    
  home.packages = with pkgs; [ # Things needed for my .zshrc
    diff-so-fancy
    zoxide
    atuin
    fzf
  ];
  
  programs.zsh = {
    enable = true;
    autocd = false;
    enableVteIntegration = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    zsh-abbr.enable = true;
    
    localVariables = {
      _ZO_CMD_PREFIX="x";
    };
  };
}

# old code
    # dotDir=".config/zsh";
    # plugins = [
    # {
    #   name = "powerlevel10k";
    #   src = pkgs.zsh-powerlevel10k;
    #   file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
    # }
    # {
    #   name = "powerlevel10k-config";
    #   src = config/zsh-powerlevel10k; file = ".p10k.zsh";
    #   }
    # ];


  # # f-sy-h is better. 
  # syntaxHighlighting = {
    # enable = true;
    # # package = "";
    # highlighters = [
    #   "brackets"
    #   "pattern"
    #   "regexp"
    #   # "cursor"
    #   # "root"
    #   # "line"
    # ];
    
  # };   



  # history = {
  #   path = "${config.xdg.configHome}/zsh/history";
  #   save = 5000;
  # };







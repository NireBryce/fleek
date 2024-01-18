{ pkgs, misc, ... }: {
  # FEEL FREE TO EDIT: This file is NOT managed by fleek. 
  home.sessionVariables = { 
    GIT_SSH = "/usr/bin/ssh";
    EDITOR = "micro";
  };

  programs.micro = {
    enable = true;
    settings = {
      autoclose = false;
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
    };
  };

  
  progams.zsh = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
      update = "fleek apply";
    };
    histSize = 50000;
    histFile = "${config.xdg.dataHome}/zsh/history";
    # zi https://github.com/wahtique/dotfiles/blob/main/dot_config/home-manager/home.nix.tmpl
    


 
}

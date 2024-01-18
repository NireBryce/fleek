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
      tabstospaces = true;
    };
  };

  programs.atuin.enableZshIntegration = true;
  programs.dircolors.enableZshIntegration = true;
  programs.direnv.enableZshIntegration = true;
  programs.fzf.enableZshIntegration = true;
  programs.zellij.enableZshIntegration = true;
  programs.zoxide.enableZshIntegration = true;
  programs.zsh = {
    enable = true;
    dotDir = ".config/zsh";
		autocd = false;
		enableVteIntegration = true;
		enableCompletion = true;
		enableAutosuggestions = true;
		shellAliases = {
      ll = "ls -l";
      update = "fleek apply";
    };
    history = {
			path = "$HOME/.config/zsh/history";
			save = 50000;
		};
		zsh-abbr.enable = true;
		zsh-abbr.abbreviations = {

		};
		syntaxHighlighting = {
      enable = true;
      # package = "";
      highlighters = [
        "brackets"
        "pattern"
        "regexp"
        "cursor"
        "root"
        "line"
      ];
      
		};   

	# .zshenv
	  envExtra = "
    
	  ";
  # .zlogin
		loginExtra = "

		";

  # .zprofile
		profileExtra = "

		";
		localVariables = {

		};
		initExtraFirst = "

		";
		initExtraBeforeCompInit = "

		";
		completionInit = "
			
		";
  # .zlogout
		logoutExtra = "

		";
	
		plugins = [
      
		];
		
	};    
 
}









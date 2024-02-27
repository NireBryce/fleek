{ lib, config, pkgs, misc, ... }: {
	# FEEL FREE TO EDIT: This file is NOT managed by fleek.
	modules = [
		./_packages.nix
		./_programs.nix
		./_sh.nix
	] 
  
 xdg = {
    enable = true;
  };


  services.kdeconnect.enable = true;
  
  home.file.".config/zsh-powerlevel10k/.p10k.zsh".source = config/zsh-powerlevel10k/.p10k.zsh;

  programs.atuin.enableZshIntegration = true;
  programs.dircolors.enableZshIntegration = true;
  programs.direnv.enableZshIntegration = true;
  programs.fzf.enableZshIntegration = true;
  programs.zellij.enableZshIntegration = true;
  programs.zoxide.enableZshIntegration = true;
  programs.zsh = {
    enable = true;
		autocd = false;
		enableVteIntegration = true;
		enableCompletion = true;
		enableAutosuggestions = true;
#    history = {
#			path = "${config.xdg.configHome}/zsh/history";
#			save = 50000;
#		};
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
        # "cursor"
        # "root"
        # "line"
      ];
      
		};   

	dotDir=".config/zsh";
		shellAliases = {
      ll = "ls -l";
      update = "fleek apply";
	    cp = "cp -i";                              # Confirm before overwriting something
			cd = "f";                                  # Empty oneletter for zoxide to not interfere with zi
			fleeks = "cd ~/.local/share/fleek";
			exa = "eza";
			ls = "eza --icons --header --group-directories-first";
    };
    

	 
}

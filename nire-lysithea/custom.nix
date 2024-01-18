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
		};
	};
	
 
}

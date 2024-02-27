{ lib, config, pkgs, misc, ... }: {
	# FEEL FREE TO EDIT: This file is NOT managed by fleek.
  home.sessionVariables = { 
    EDITOR = "micro";
		MICRO_TRUECOLOR = 1;
		NIXPKGS_ALLOW_UNFREE = 1;
		PYTHONBREAKPOINT = "ipdb.set_trace";
	  COLORTERM="truecolor";
    PAGER="less -R";
    MANPAGER="bat --language man";
		LC_CTYPE="en_US.UTF-8";
  };
 xdg = {
    enable = true;
  };
  
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
			''-g "--help"="--help | bat --language man"''
			''-g "ndotfiles"="/home/elly/new_dotfiles"''
			''-g "pamac-refresh-mirrors"="pacman-mirrors -f 5 && sudo pacman -Syuu"
			''-g "_regex-extract_url"="'(https?|ftp|file)://[^\s/\$.?#].[^\s]*'"
			''-g "ssh-hexe"="78.47.96.62"
			''"abbr remove"="abbr erase"
			''"abbr rm"="abbr erase"
			"code-python"="code --profile=\"python\""
			"code-rust"="code --profile=\"rust\""
			"cs-zsh-bindings"="bindkey"
			"edit-zrc"="micro ~/.zshrc"
			"fb"="xplr"
			"fleek edit"="micro ~/.fleek.yml"
			"gsa"="git stash push"
			"highlighting-theme-default"="fast-theme sv-orple"
			"img-cat"="kitty +kitten icat"
			"kssh"="kitty +kitten ssh"
			"lcd"="cd ; ls"
			"linein-loopback"="amixer --card=1 sset 'Loopback Mixing' Enabled"
			"linein-loopback-disable"="amixer --card=1 sset 'Loopback Mixing' Disabled"
			"loopback"="pw-loopback"
			"mic-loopback"="pw-loopback"
			"nav"="xplr"
			"pamac uninstall"="pamac remove"
			"pamac-update-mirrors"="sudo pacman-mirrors -g"
			"pm"="pamac"
			"ssh-jellyfin-catball"="ssh erin@media.computer.garden -p 8022"
			"sudo pamac uninstall"="sudo pamac remove"
			"sudo pm"="pamac"
			"ttt"="bash _util/a11y/talon/run.sh"
			"wh"="wormhole"
			"whence"="type -a"
			"zsh-keymap"="bindkey"

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
    
	# .zshenv
	  envExtra = ''
    
		'';
  # .zlogin
		loginExtra = ''

		'';

  # .zprofile
		profileExtra = ''

		'';
		plugins = [
  	{
  		name = "powerlevel10k";
  		src = pkgs.zsh-powerlevel10k;
  		file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
  	}
  	{
  		name = "powerlevel10k-config";
  		src = config/zsh-powerlevel10k;
  		file = ".p10k.zsh";
	  	}
		];
		localVariables = {
			_ZO_CMD_PREFIX="f";
		};

		
		
		initExtraFirst = ''
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "''${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh" ]]; then
	source "''${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh"
fi

typeset -U path cdpath fpath manpath

	for profile in ''${(z)NIX_PROFILES}; do
		fpath+=(''$profile/share/zsh/site-functions ''$profile/share/zsh/''$ZSH_VERSION/functions ''$profile/share/zsh/vendor-completions)
	done

# zi install
	if [[ ! -d "''$HOME/.zi" ]]; then
			sh -c "''$(curl -fsSL get.zshell.dev)" -- -a loader
	fi


# Zi bootstrap
	if [[ -r "''${XDG_CONFIG_HOME:-''${HOME}/.config}/zi/init.zsh" ]]; then
		source "''${XDG_CONFIG_HOME:-''${HOME}/.config}/zi/init.zsh" && zzinit
	fi
	
'';
		initExtraBeforeCompInit = ''
##############################################################################################################################
# STOLEN FROM MANJARO DEFAULT CONFIG
############################################


	# zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
		
	# Options section
		setopt correct                                                  # Auto correct mistakes
		setopt nocaseglob                                               # Case insensitive globbing
		setopt rcexpandparam                                            # Array expension with parameters
		setopt nocheckjobs                                              # Don't warn about running processes when exiting
		setopt numericglobsort                                          # Sort filenames numerically when it makes sense
		setopt nobeep                                                   # No beep
		setopt appendhistory                                            # Immediately append history instead of overwriting
		setopt histignorealldups                                        # If a new command is a duplicate, remove the older one
		setopt autocd                                                   # if only directory path is entered, cd there.
		setopt inc_append_history                                       # save commands are added to the history immediately, otherwise only when shell exits.
		setopt histignorespace                                          # Don't save commands that start with space
	# disabled after the fact:
		# setopt extendedglob                                             # Extended globbing. Allows using regular expressions with *
		zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'   # Case insensitive tab completion
		zstyle ':completion:*' list-colors "''${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)
		zstyle ':completion:*' rehash true                              # automatically find new executables in path 
	# Speed up completions
		zstyle ':completion:*' accept-exact '*(N)'
		zstyle ':completion:*' use-cache on
		zstyle ':completion:*' cache-path ~/.zsh/cache
	# Keybindings section
		bindkey -e
		bindkey '^[[7~' beginning-of-line                               # Home key
		bindkey '^[[H' beginning-of-line                                # Home key
	if [[ "''${terminfo[khome]}" != "" ]]; then
		bindkey "''${terminfo[khome]}" beginning-of-line                # [Home] - Go to beginning of line
	fi
		bindkey '^[[8~' end-of-line                                     # End key
		bindkey '^[[F' end-of-line                                      # End key
	if [[ "''${terminfo[kend]}" != "" ]]; then
		bindkey "''${terminfo[kend]}" end-of-line                       # [End] - Go to end of line
	fi
		bindkey '^[[2~' overwrite-mode                                  # Insert key
		bindkey '^[[3~' delete-char                                     # Delete key
		bindkey '^[[C'  forward-char                                    # Right key
		bindkey '^[[D'  backward-char                                   # Left key
		bindkey '^[[5~' history-beginning-search-backward               # Page up key
		bindkey '^[[6~' history-beginning-search-forward                # Page down key

	# Navigate words with ctrl+arrow keys
		bindkey '^[Oc' forward-word                                     #
		bindkey '^[Od' backward-word                                    #
		bindkey '^[[1;5D' backward-word                                 #
		bindkey '^[[1;5C' forward-word                                  #
		bindkey '^H' backward-kill-word                                 # delete previous word with ctrl+backspace
		bindkey '^[[Z' undo                                             # Shift+tab undo last action
	# Offer to install missing package if command is not found
	if [[ -r /usr/share/zsh/functions/command-not-found.zsh ]]; then
		source /usr/share/zsh/functions/command-not-found.zsh
		export PKGFILE_PROMPT_INSTALL_MISSING=1
	fi

	
	# Options from Prezto
		
		setopt COMPLETE_IN_WORD                                         # Complete from both ends of a word.
		setopt ALWAYS_TO_END                                            # Move cursor to the end of a completed word.
		setopt PATH_DIRS                                                # Perform path search even on command names with slashes.
		setopt AUTO_MENU                                                # Show completion menu on a successive tab press.
		setopt AUTO_LIST                                                # Automatically list choices on ambiguous completion.
		setopt AUTO_PARAM_SLASH                                         # If completed parameter is a directory, add a trailing slash.
		setopt EXTENDED_GLOB                                            # Needed for file modification glob modifiers with compinit.
		setopt extendedglob #belt and suspenders

	# grabbed from zsh4humans
		setopt glob_dots
		setopt globdots #belt and suspenders                                                # no special treatment for file names with a leading dot
	# user disabled:
		# setopt no_auto_menu                                         # require an extra TAB press to open the completion menu
		
		unsetopt MENU_COMPLETE                                          # Do not autoselect the first completion entry.
		unsetopt FLOW_CONTROL                                           # Disable start/stop characters in shell editor.

	# Group matches and describe.
		zstyle ':completion:*:*:*:*:*' menu select
		zstyle ':completion:*:matches' group 'yes'
		zstyle ':completion:*:options' description 'yes'
		zstyle ':completion:*:options' auto-description '%d'
		zstyle ':completion:*:corrections' format ' %F{green}-- %d (errors: %e) --%f'
		zstyle ':completion:*:descriptions' format ' %F{yellow}-- %d --%f'
		zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
		zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
		zstyle ':completion:*' format ' %F{yellow}-- %d --%f'
		zstyle ':completion:*' group-name ""
		zstyle ':completion:*' verbose yes

	# Don't complete unavailable commands.
		zstyle ':completion:*:functions' ignored-patterns '(_*|pre(cmd|exec))'
	
	# Array completion element sorting.
		zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters
	
	# Directories
		zstyle ':completion:*:*:cd:*' tag-order local-directories directory-stack path-directories
		zstyle ':completion:*:*:cd:*:directory-stack' menu yes select
		zstyle ':completion:*:-tilde-:*' group-order 'named-directories' 'path-directories' 'users' 'expand'
		zstyle ':completion:*' squeeze-slashes true

	# History
		zstyle ':completion:*:history-words' stop yes
		zstyle ':completion:*:history-words' remove-all-dups yes
		zstyle ':completion:*:history-words' list false
		zstyle ':completion:*:history-words' menu yes
	# Environment Variables
		zstyle ':completion::*:(-command-|export):*' fake-parameters ''${''${''${_comps[(I)-value-*]#*,}%%,*}:#-*-}
# */etc/hosts* which might be uninteresting.
	zstyle -a ':prezto:module:completion:*:hosts' etc-host-ignores '_etc_host_ignores'
	
	zstyle -e ':completion:*:hosts' hosts 'reply=(
		''${=''${=''${=''${''${(f)"''$(cat {/etc/ssh/ssh_,~/.ssh/}known_hosts(|2)(N) 2> /dev/null)"}%%[#| ]*}//\]:[0-9]*/ }//,/ }//\[/ }
		''${=''${(f)"''$(cat /etc/hosts(|)(N) <<(ypcat hosts 2> /dev/null))"}%%(\#''${_etc_host_ignores:+|''${(j:|:)~_etc_host_ignores}})*}
		''${=''${''${''${''${(@M)''${(f)"''$(cat ~/.ssh/config 2> /dev/null)"}:#Host *}#Host }:#*\**}:#*\?*}}
	)'

	
	# Don't complete uninteresting users...
		zstyle ':completion:*:*:*:users' ignored-patterns \
			adm amanda apache avahi beaglidx bin cacti canna clamav daemon \
			dbus distcache dovecot fax ftp games gdm gkrellmd gopher \
			hacluster haldaemon halt hsqldb ident junkbust ldap lp mail \
			mailman mailnull mldonkey mysql nagios \
			named netdump news nfsnobody nobody nscd ntp nut nx openvpn \
			operator pcap postfix postgres privoxy pulse pvm quagga radvd \
			rpc rpcuser rpm shutdown squid sshd sync uucp vcsa xfs '_*'
	
	# ... unless we really want to.
		zstyle '*' single-ignored show
	
	# Ignore multiple entries.
		zstyle ':completion:*:(rm|kill|diff):*' ignore-line other
		zstyle ':completion:*:rm:*' file-patterns '*:all-files'
	
	# Kill
		zstyle ':completion:*:*:*:*:processes' command 'ps -u $LOGNAME -o pid,user,command -w'
		zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;36=0=01'
		zstyle ':completion:*:*:kill:*' menu yes select
		zstyle ':completion:*:*:kill:*' force-list always
		zstyle ':completion:*:*:kill:*' insert-ids single
	
	# Man
		zstyle ':completion:*:manuals' separate-sections true
		zstyle ':completion:*:manuals.(^1*)' insert-sections true
	
	# Media Players
		zstyle ':completion:*:*:mpg123:*' file-patterns '*.(mp3|MP3):mp3\ files *(-/):directories'
		zstyle ':completion:*:*:mpg321:*' file-patterns '*.(mp3|MP3):mp3\ files *(-/):directories'
		zstyle ':completion:*:*:ogg123:*' file-patterns '*.(ogg|OGG|flac):ogg\ files *(-/):directories'
		zstyle ':completion:*:*:mocp:*' file-patterns '*.(wav|WAV|mp3|MP3|ogg|OGG|flac):ogg\ files *(-/):directories'

	# SSH/SCP/RSYNC
		zstyle ':completion:*:(ssh|scp|rsync):*' tag-order 'hosts:-host:host hosts:-domain:domain hosts:-ipaddr:ip\ address *'
		zstyle ':completion:*:(scp|rsync):*' group-order users files all-files hosts-domain hosts-host hosts-ipaddr
		zstyle ':completion:*:ssh:*' group-order users hosts-domain hosts-host users hosts-ipaddr
		zstyle ':completion:*:(ssh|scp|rsync):*:hosts-host' ignored-patterns '*(.|:)*' loopback ip6-loopback localhost ip6-localhost broadcasthost
		zstyle ':completion:*:(ssh|scp|rsync):*:hosts-domain' ignored-patterns '<->.<->.<->.<->' '^[-[:alnum:]]##(.[-[:alnum:]]##)##' '*@*'
		zstyle ':completion:*:(ssh|scp|rsync):*:hosts-ipaddr' ignored-patterns '^(<->.<->.<->.<->|(|::)([[:xdigit:].]##:(#c,2))##(|%*))' '127.0.0.<->' '255.255.255.255' '::1' 'fe80::*'

		autoload -U add-zsh-hook
	# add-zsh-hook precmd mzc_termsupport_precmd
	# add-zsh-hook preexec mzc_termsupport_preexec

	## Plugins section: Enable fish style features
		# bind UP and DOWN arrow keys to history substring search
		# bindkey "$terminfo[kcuu1]" history-substring-search-up
		# bindkey "$terminfo[kcud1]" history-substring-search-down
		# bindkey '^[[A' history-substring-search-up
		# bindkey '^[[B' history-substring-search-down
		zmodload zsh/terminfo

	# Bindkeys from I think zsh for humans
		'bindkey' '-d'
		'bindkey' '-e'

		'bindkey' '-s' '^[OM'    '^M'
		'bindkey' '-s' '^[Ok'    '+'
		'bindkey' '-s' '^[Om'    '-'
		'bindkey' '-s' '^[Oj'    '*'
		'bindkey' '-s' '^[Oo'    '/'
		'bindkey' '-s' '^[OX'    '='
		'bindkey' '-s' '^[OH'    '^[[H'
		'bindkey' '-s' '^[OF'    '^[[F'
		'bindkey' '-s' '^[OA'    '^[[A'
		'bindkey' '-s' '^[OB'    '^[[B'
		'bindkey' '-s' '^[OD'    '^[[D'
		'bindkey' '-s' '^[OC'    '^[[C'
		'bindkey' '-s' '^[[1~'   '^[[H'
		'bindkey' '-s' '^[[4~'   '^[[F'
		'bindkey' '-s' '^[Od'    '^[[1;5D'
		'bindkey' '-s' '^[Oc'    '^[[1;5C'
		'bindkey' '-s' '^[^[[D'  '^[[1;3D'
		'bindkey' '-s' '^[^[[C'  '^[[1;3C'
		'bindkey' '-s' '^[[7~'   '^[[H'
		'bindkey' '-s' '^[[8~'   '^[[F'
		'bindkey' '-s' '^[[3\^'  '^[[3;5~'
		'bindkey' '-s' '^[^[[3~' '^[[3;3~'
		'bindkey' '-s' '^[[1;9D' '^[[1;3D'
		'bindkey' '-s' '^[[1;9C' '^[[1;3C'

		'bindkey' '^[[H'    'beginning-of-line'
		'bindkey' '^[[F'    'end-of-line'
		'bindkey' '^[[3~'   'delete-char'
		'bindkey' '^[[3;5~' 'kill-word'
		'bindkey' '^[[3;3~' 'kill-word'
		'bindkey' '^[k'     'backward-kill-line'
		'bindkey' '^[K'     'backward-kill-line'
		'bindkey' '^[j'     'kill-buffer'
		'bindkey' '^[J'     'kill-buffer'
		'bindkey' '^[/'     'redo'                          # Alt + /
		'bindkey' '^[[1;3D' 'backward-word'
		'bindkey' '^[[1;5D' 'backward-word'
		'bindkey' '^[[1;3C' 'forward-word'
		'bindkey' '^[[1;5C' 'forward-word'
############################################
# END FRONTMATTER
###############################################################################################################################

	fpath=($HOME/.nix-profile/share/zsh/site-functions $fpath)

	source $HOME/.zi/plugins/RobSis---zsh-completion-generator/zsh-completion-generator.plugin.zsh

###############################################################################################################################
# ZI PACK/PLUG MANAGEMENT
############################################
# Install packages
	# install FZF
		# zi pack"binary" for fzf

		# fzf plugins
			zi load Aloxaf/fzf-tab
			zi light alexiszamanidis/zsh-git-fzf                                  # https://github.com/alexiszamanidis/zsh-git-fzf

	# install zoxide
		#make it not interfere with zi
		_ZO_CMD_PREFIX="f" 
		# zi ice as'null' from"gh-r" sbin
		# zi light ajeetdsouza/zoxide                                             
		# Zoxide plugin
			zi has'zoxide' wait lucid for \
			z-shell/zsh-zoxide
			
# Plugins
	# Aliases
		zi light akash329d/zsh-alias-finder 
		zi light olets/zsh-abbr                                                 # abbr - Alias but more annoying for you, less annoying for everyone around you 

	# annexes and metaplugins
		zi light-mode for z-shell/z-a-meta-plugins @zsh-users+fast              # https://github.com/z-shell/zsh-fancy-completions
		zi light z-shell/z-a-bin-gem-node                                       # uhhhhh https://wiki.zshell.dev/ecosystem/annexes/bin-gem-node but it's not that important
		zi light z-shell/z-a-patch-dl


	# Autosuggest -- use right-arrow to complete
		zi light zsh-users/zsh-autosuggestions

	# cheatsheets
		zi light 0b10/cheatsheet

	# clipboard
		zi light kutsan/zsh-system-clipboard                                    # synchronize tmux clipboard buffers if ZSH_SYSTEM_CLIPBOARD_TMUX_SUPPORT='true'
																																						# Also enables clipboard use in the zsh vi-mode line editor

	# diff
		zi light https://github.com/z-shell/zsh-diff-so-fancy

	# History plugins
		zi light jgogstad/passwordless-history
		# zi load z-shell/H-S-MW # history-search-multi_word
		# zi load zsh-users/zsh-history-substring-search
		# zi light tymm/zsh-directory-history


	# man / help
		zi light mattmc3/zman                                                   # https://github.com/mattmc3/zman
		zi light ael-code/zsh-colored-man-pages
		zi light z-shell/z-a-man                                                # https://github.com/z-shell/z-a-man
	
	# ssh  
		zi light gko/ssh-connect

	# Shell plugins
		# zi light https://github.com/gmatheu/shell-plugins                     # WARN: flaky

	# syntax highlighting
		zi light z-shell/F-Sy-H
		zi light trapd00r/zsh-syntax-highlighting-filetypes                     # https://github.com/trapd00r/zsh-syntax-highlighting-filetypes

	# Themes and colors
		zi ice depth=1; zi light romkatv/powerlevel10k                          # Powerlevel 10k - main theme
		zi light chrissicool/zsh-256color
		zi light zpm-zsh/colorize                                               # color common commands

unset python
  
	# Wishlist
		# empty

	# # Use caching to make completion for commands such as dpkg and apt usable.
	#   zstyle ':completion::complete:*' use-cache on
	#   zstyle ':completion::complete:*' cache-path "''${HOME}/.cache/prezto/zcompcache"

		

	# pip completions
		# eval "$(python -m pip completion --zsh)"                              # Currently broken, see https://github.com/pypa/pip/issues/12166

	# zellij completions
		# eval "$(zellij setup --generate-completion zsh)"

	# Completions
		zi load RobSis/zsh-completion-generator
		zi light 3v1n0/zsh-bash-completions-fallback                            # https://github.com/3v1n0/zsh-bash-completions-fallback
		zi wait pack atload=+"zicompinit_fast; zicdreplay" for system-completions
		zi light clarketm/zsh-completions                                       # https://github.com/clarketm/zsh-completions
		# completions from --help
			source "''${HOME}/.zi/plugins/RobSis---zsh-completion-generator/zsh-completion-generator.plugin.zsh" 

	WORDCHARS='*?[]~=&;!#$%^(){}<>';       # Don't consider certain characters part of the word

		'';
		completionInit = ''
	
	# cleanup
		zicompinit                                                              # <- https://wiki.zshell.dev/docs/guides/commands
		autoload -Uz compinit
		compinit
   
		'';
		initExtra = '' 
	# Atuin
		export ATUIN_NOBIND="true"
		eval "$(atuin init zsh --disable-up-arrow)"
		bindkey '^r' _atuin_search_widget
	# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
		#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
	# enable hash (#) character for line-comments by turning off extended globbing
		# unsetopt extended_glob
		# setopt interactive_comments
	# free up keybindings for copy/paste in zellij
		bindkey -r "^V"
		bindkey -r "^v"
		bindkey -r "^[v"
		bindkey -r "^[V"
		bindkey -r "^[c"
		bindkey -r "^[C"
		'';
  # .zlogout
		logoutExtra = ''

		'';
	
		
	};    
 
}









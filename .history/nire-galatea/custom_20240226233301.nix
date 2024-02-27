{ lib, config, pkgs, misc, ... }: {
	# FEEL FREE TO EDIT: This file is NOT managed by fleek.
	modules = [
	] 
  
 xdg = {
    enable = true;
  };


  services.kdeconnect.enable = true;
  
  home.file.".config/zsh-powerlevel10k/.p10k.zsh".source = config/zsh-powerlevel10k/.p10k.zsh;


}

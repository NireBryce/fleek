{ lib, config, pkgs, misc, ... }: {
  services.kdeconnect.enable = true;



  services.kdeconnect.enable = true;
  
  home.file.".config/zsh-powerlevel10k/.p10k.zsh".source = config/zsh-powerlevel10k/.p10k.zsh;


}

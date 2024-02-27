{ pkgs, misc, ... }: {
  home.packages = [
  # graphics  
    pkgs.glfw
  
  
  # programs
    pkgs.bitwarden            # password manager
    
  #dev
    pkgs.github-desktop
  ];
}

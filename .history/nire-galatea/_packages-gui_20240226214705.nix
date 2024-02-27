{ pkgs, misc, ... }: {
  home.packages = [
  # graphics  
    pkgs.glfw
  
  # editors
    pkgs.vscode

  # programs
    pkgs.bitwarden            # password manager
    
  #dev
    pkgs.github-desktop
  ];
}

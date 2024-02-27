{ pkgs, misc, ... }: {
  home.packages = [

  # graphics  
    pkgs.glfw
  
    
    pkgs.obsidian
    pkgs.wire-desktop
  # editors
    pkgs.vscode

  # programs
    pkgs.bitwarden            # password manager
    
  #dev
    pkgs.github-desktop
  
  ];
}

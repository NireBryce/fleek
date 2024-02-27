{ pkgs, misc, ... }: {
  home.packages = [

  # graphics  
    pkgs.glfw
  
  # desktop applications
    pkgs.obsidian
    pkgs.wire-desktop
    signal-desktop

  # printing
  
  # editors
    pkgs.vscode

  # programs
    pkgs.bitwarden            # password manager
    
  #dev
    pkgs.github-desktop
  
  ];
}

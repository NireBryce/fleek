{ pkgs, misc, ... }: {
  home.packages = [

  # graphics  
    pkgs.glfw
  
  obsidian
  wire-desktop
  # editors
    pkgs.vscode

  # programs
    pkgs.bitwarden            # password manager
    
  #dev
    pkgs.github-desktop
  
  ];
}

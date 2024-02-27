{ pkgs, misc, ... }: {
  home.packages = [

  # graphics  
    pkgs.glfw
    pkgs.dxvk
  # desktop applications
    pkgs.obsidian
    pkgs.wire-desktop
    signal-desktop
  # file management
    p7zip
  # printing
    system-config-printer
  # editors
    pkgs.vscode

  # programs
    pkgs.bitwarden            # password manager
    
  #dev
    pkgs.github-desktop
  
  ];
}

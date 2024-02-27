{ pkgs, misc, ... }: {
  home.packages = [
  # desktop applications
    pkgs.obsidian
  
  # chat
    pkgs.wire-desktop
    pkgs.signal-desktop
    pkgs.zoom-us #video conferencing

  # audio 
    pkgs.helvum # find a replacement that lets you automatically apply a layout to bluetooth devices
    
  # file management
    pkgs.p7zip
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

{ pkgs, misc, ... }: {
  home.packages = [
  # desktop applications
    pkgs.obsidian
  
  # chat
    pkgs.wire-desktop
    pkgs.signal-desktop
    pkgs.zoom-us #video conferencing
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

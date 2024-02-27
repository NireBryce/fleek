{ pkgs, misc, ... }: {
  home.packages = [
  # desktop applications
    pkgs.obsidian
    pkgs.keybase-gui
    pkgs.keybase

  # chat
    pkgs.discord
    pkgs.wire-desktop
    pkgs.signal-desktop
    pkgs.zoom-us #video conferencing

  # sound 
    pkgs.helvum # find a replacement that lets you automatically apply a layout to bluetooth devices
  # media
    pkgs.vlc
  # file management
    pkgs.p7zip
  # printing
    pkgs.system-config-printer
  # editors
    pkgs.vscode
  # programs
    pkgs.bitwarden            # password manager
  #dev
    pkgs.github-desktop
  ];
}

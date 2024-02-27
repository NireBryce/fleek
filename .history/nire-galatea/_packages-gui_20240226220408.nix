{ pkgs, misc, ... }: {
  home.packages = [
  # desktop applications
    pkgs.obsidian
    pkgs.keybase-gui
    pkgs.keybase
  # terminal
    pkgs.kitty
  # chat
    pkgs.discord
    pkgs.wire-desktop
    pkgs.signal-desktop
    pkgs.zoom-us #video conferencing
    pkgs.emote # emoji, https://github.com/tom-james-watson/emote
  # remote desktop
    pkgs.input-leap
  # sound 
    pkgs.helvum # find a replacement that lets you automatically apply a layout to bluetooth devices
  # mouse
    pkgs.piper
  # media
    pkgs.vlc
    pkgs.gimp
  # office
    pkgs.libreoffice-qt
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

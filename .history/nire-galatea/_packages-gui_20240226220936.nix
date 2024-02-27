{ pkgs, misc, ...w}: {
  home.packages = [
  # desktop applications
    pkgs.obsidian
    pkgs.keybase-gui
    pkgs.keybase
  # terminals
    pkgs.kitty                    # kitty
  # chat
    pkgs.telegram-desktop         # telegram
    pkgs.discord                  # discord
    pkgs.wire-desktop             # wire
    pkgs.signal-desktop           # signal chat
    pkgs.zoom-us                  # video conferencing
    pkgs.emote                    # emoji, https://github.com/tom-james-watson/emote
  # remote desktop
    pkgs.input-leap
  # sound 
    pkgs.helvum # find a replacement that lets you automatically apply a layout to bluetooth devices
  # mouse
    pkgs.piper
  # keyboard
    pkgs.qmk
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
    # pkgs.vscode
    pkgs.vscode-fhs
  # programs
    pkgs.bitwarden            # password manager
  #dev
    pkgs.github-desktop
  ];
}

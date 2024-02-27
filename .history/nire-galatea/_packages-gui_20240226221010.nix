{ pkgs, misc, ... }: {
  home.packages = with pkgs; [
  # desktop applications
    obsidian
    keybase-gui
    keybase
  # terminals
    kitty                    
  # chat
    telegram-desktop         
    discord                  # discord
    wire-desktop             # wire
    signal-desktop           # signal chat
    zoom-us                  # video conferencing
    emote                    # emoji, https://github.com/tom-james-watson/emote
  # remote desktop
    input-leap
  # sound 
    helvum # find a replacement that lets you automatically apply a layout to bluetooth devices
  # mouse
    piper
  # keyboard
    qmk
  # media
    vlc
    gimp
  # office
    libreoffice-qt
  # file management
    p7zip
  # printing
    system-config-printer
  # editors
    # vscode
    vscode-fhs
  # programs
    bitwarden            # password manager
  #dev
    github-desktop
  ];
}

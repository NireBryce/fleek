{ pkgs, misc, ... }: {
  home.packages = with pkgs; [
  # desktop applications
    obsidian
    keybase-gui
    keybase
  # terminals
    kitty                    
    kitty-img
  # chat
    telegram-desktop         
    discord                  
    wire-desktop             
    signal-desktop           
    zoom-us                   # video conferencing
    emote                     # emoji, https://github.com/tom-james-watson/emote
  # remote desktop
    input-leap
  # sound 
    helvum                    # mixer
                              # find a replacement that lets you automatically apply a layout to bluetooth devices
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
    # vscode                    # Manage plugins with nix
    vscode-fhs                # manage plugins with vscode
  # programs
    bitwarden                 # password manager
  #dev
    github-desktop
  ];
}

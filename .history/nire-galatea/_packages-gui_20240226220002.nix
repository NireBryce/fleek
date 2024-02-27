{ pkgs, misc, ... }: {
  home.packages = [
  # desktop applications
    pkgs.obsidian
  
  # chat
    pkgs.wire-desktop
    pkgs.signal-desktop
    pkgs.zoom-us #video conferencing

  # audio 
    helvum # find a replacement that lets you automatically apply a layout to bluetooth devices
    { pkgs, misc, ... }: {
  home.packages = [
    pkgs.pipewire
    pkgs.wireplumber
    
  ];
  };

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

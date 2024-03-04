{ pkgs, misc, ... }: {
  home.packages = [
# kde utilities just in case they aren't in nixOS' metapackage
    # libsForQt5.dolphin
    # libsForQt5.ark
    # libsForQt5.elisa
    # libsForQt5.kate
    # kcharselect
    # libsForQt5.kdeconnect-kde
    pkgs.filelight
    pkgs.kfind
    pkgs.kmenuedit
    pkgs.kdenlive
    pkgs.kcharselect
    pkgs.kcalc
    
    # libsForQt5.khelpcenter
    # libsForQt5.kinfocenter
    pkgs.kmenuedit
    # libsForQt5.konsole
    # libksysguard
    # libsForQt5.kwallet
    # libsForQt5.kwalletmanager
    # libsForQt5.okular
    # plasma-pa
    # libsForQt5.plasma-systemmonitor
    # libsForQt5.plasma-wayland-protocols
    pkgs.plasma-pa
    pkgs.qt6.qttools
    # kdePackages.kdeconnect-kde
    # partition-manager
    pkgs.kdePackages.baloo
    pkgs.kdePackages.baloo-widgets
    
  ];
  
}

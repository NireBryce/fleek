{ pkgs, misc, ... }: {
  home.packages = [
# kde utilities just in case they aren't in nixOS' metapackage
    # libsForQt5.dolphin
    # libsForQt5.ark
    # libsForQt5.elisa
    filelight
    # libsForQt5.kate
    kcalc
    kcharselect
    # libsForQt5.kdeconnect-kde
    kdenlive
    kfind
    # libsForQt5.khelpcenter
    # libsForQt5.kinfocenter
    kmenuedit
    # libsForQt5.konsole
    libksysguard
    # libsForQt5.kwallet
    # libsForQt5.kwalletmanager
    # libsForQt5.okular
    plasma-pa
    # libsForQt5.plasma-systemmonitor
    # libsForQt5.plasma-wayland-protocols
    qt6.qttools
    # kdePackages.kdeconnect-kde
    # partition-manager
    baloo
  ];
  
}

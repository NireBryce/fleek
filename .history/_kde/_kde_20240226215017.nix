{ pkgs, misc, ... }: {
  home.packages = [
# kde utilities just in case they aren't in nixOS' metapackage
    libsForQt5.dolphin
    libsForQt5.ark
    libsForQt5.elisa
    libsForQt5.filelight
    libsForQt5.kate
    libsForQt5.kcalc
    libsForQt5.kcharselect
    libsForQt5.kdeconnect-kde
    libsForQt5.kdenlive
    libsForQt5.kfind
    libsForQt5.khelpcenter
    libsForQt5.kinfocenter
    libsForQt5.kmenuedit
    libsForQt5.konsole
    libsForQt5.libksysguard
    libsForQt5.kwallet
    libsForQt5.kwalletmanager
    libsForQt5.okular
    libsForQt5.plasma-pa
    libsForQt5.plasma-systemmonitor
    libsForQt5.plasma-wayland-protocols
    qt6.qttools
    libsForQt5.spectacle
    partition-manager
  ];
}

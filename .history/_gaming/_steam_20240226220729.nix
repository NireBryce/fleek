{ pkgs, misc, ... }: {
  home.packages = [
    pkgs.steamtinkerlaunch
    pkgs.r2modman
  ];

  # Steam is set up through nixos configuration https://nixos.wiki/wiki/Steam

    
};


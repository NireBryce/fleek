{ pkgs, misc, ... }: {
  home.packages = [
    pkgs.glfw
    pkgs.bitwarden            # password manager
    
  ];
}

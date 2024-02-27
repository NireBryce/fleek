{ pkgs, misc, ... }: {
# Where the ruby lives
  home.packages = [
    pkgs.ruby
  ];
}


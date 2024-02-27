{ pkgs, misc, ... }: {
# Where the ruby packages live
  home.packages = [
    pkgs.ruby
  ];
}


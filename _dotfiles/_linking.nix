{...}:

{ # TODO: split this out into where they're installed.
  home.file = {
  "./.profile".source = config/.profile;
  "./.bashrc".source = config/.bashrc;
  "./.bash_profile".source = config/.bash_profile;
  "./.bash_logout".source = config/.bash_logout;
  "./.config/zellij".source = config/zellij;
  "./.config/zsh".source = config/zsh;
  "./.config/atuin".source = config/atuin;
  "./.config/micro".source = config/micro;
  "./.config/kitty".source = config/kitty;
  "./.config/promnesia".source = config/promnesia;
  "./.config/steamtinkerlaunch".source = config/steamtinkerlaunch;
  "./config/sway".source = config/sway;
  # "./zsh-abbr".source = config/zsh-abbr;
  "./.config/zsh.d".source = config/zsh.d;
  };

}

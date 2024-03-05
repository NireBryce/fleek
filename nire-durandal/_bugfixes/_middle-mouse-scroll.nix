{ lib, ... } :

{
  # TODO: this requires manual changes if the mouse event ID is different
  # figure out how to variablize it or better yet pull it from libinput via nix


  # https://www.reddit.com/r/linux4noobs/comments/m111ou/changing_middleclick_in_kde_wayland/
  #
  # locate device id (`/dev/input/eventNN`)
  # `sudo libinput list-devices`
  #

  home.activation = { 
    bugfix-middle-mouse-scroll = home-manager.lib.hm.dag.entryAfter ["writeBoundary"] ''
      qdbus org.kde.KWin /org/kde/KWin/InputDevice/event5 org.kde.KWin.InputDevice.scrollOnButtonDown true 
    '';
    # optionally 
    # `qdbus org.kde.KWin /org/kde/KWin/InputDevice/eventNN org.kde.KWin.InputDevice.scrollButton X[`
  };

}

{ config, pkgs, lib, ... }:
let
  colorscheme = (import ../../colorschemes/onedark.nix) { lib = lib; };
in
  {
    home.packages = with pkgs; [
      # Screen Locker
      i3lock-fancy

      # Theming (GTK)
      lxappearance arc-icon-theme
      arc-theme

      # file browser
      pcmanfm
      # screenshot utility
      scrot

      dmenu
      picom
    ];

    gtk = {
      enable = true;
      font = { name = "TeX Gyre Heros 10"; };
      iconTheme = { name = colorscheme.gtk-icon-name; };
      theme = { name = colorscheme.gtk-name; };
    };

    services.picom = {
      enable = true;
      inactiveOpacity = "0.90";
      activeOpacity = "0.95";
      experimentalBackends = true;
      opacityRule = [
        "100:class_g   *?= 'Firefox'"
      ];
      extraOptions = ''
        blur-method = "dual_kawase";
        blur-strength = 8;
        corner-radius = 8;
        round-borders = 1;
        
        rounded-corners-exclude = [
          "class_g = 'Polybar'",
        ];
      '';
      fade = true;
      fadeDelta = 5;
    };

    #xsession.windowManager.xmonad = {
    #  config = pkgs.writeText "xmonad.hs" ''
    #    ${builtins.readFile ./xmonad/config.hs}
    #    myFocusedBorderColor = "${colorscheme.accent-primary}"
    #    myNormalBorderColor = "${colorscheme.bg-primary-bright}"
    #  '';
    #};
  }

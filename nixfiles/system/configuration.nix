{ config, pkgs, lib,... }:
{
  imports = [ <nixpkgs/nixos/modules/installer/virtualbox-demo.nix> ];

  # Let demo build as a trusted user.
 nix.trustedUsers = [ "demo" ];

# Mount a VirtualBox shared folder.
# This is configurable in the VirtualBox menu at
# Machine / Settings / Shared Folders.
# fileSystems."/mnt" = {
#   fsType = "vboxsf";
#   device = "nameofdevicetomount";
#   options = [ "rw" ];
# };

# By default, the NixOS VirtualBox demo image includes SDDM and Plasma.
# If you prefer another desktop manager or display manager, you may want
# to disable the default.
services.xserver = {
  enable = true;
  #desktopManager.plasma5.enable = lib.mkForce false;
  displayManager.defaultSession = lib.mkDefault "none+xmonad";
  windowManager.xmonad = {
    enable = true;
    enableContribAndExtras = true;
    config = pkgs.writeText "xmonad.hs" ''
      ${builtins.readFile ./../user/modules/desktop-environment/xmonad/config.hs}
    '';
  };
};

# Enable GDM/GNOME by uncommenting above two lines and two lines below.
# services.xserver.displayManager.gdm.enable = true;
# services.xserver.desktopManager.gnome3.enable = true;

# Set your time zone.
 time.timeZone = "Europe/Berlin";

# List packages installed in system profile. To search, run:
# \$ nix search wget
 environment.systemPackages = with pkgs; [
   wget
   git
   home-manager
   (pkgs.writeScriptBin "nixFlakes" ''
      #!/usr/bin/env bash
      exec ${pkgs.nixUnstable}/bin/nix --experimental-features "nix-command flakes" "$@"
   '')
 ];

# Enable the OpenSSH daemon.
# services.openssh.enable = true;

   nix = {
    package = pkgs.nixUnstable;
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
   };
   
   users.users.demo = {shell = pkgs.fish;};

}

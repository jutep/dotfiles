{ pkgs, inputs, system, ... }:
{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "demo";
  home.homeDirectory = "/home/demo";

  home.packages = with pkgs; [
    alacritty
    fish
    tldr
  ];
 
  imports = [
    (import ./modules/nvim/init.nix ({inherit inputs system pkgs;}))
    ./modules/desktop-environment/index.nix
    ./programming.nix
    ./modules/cli/fish.nix
    ./modules/cli/newsboat.nix
    ./programs.nix
  ];

  programs.fish.enable = true;

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.03";
}

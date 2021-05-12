{pkgs,...}:
{
  home.packages = with pkgs; [
    sxiv
    firefox
    mpv
  ];
}

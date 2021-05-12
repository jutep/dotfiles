{pkgs,...}:
{
  home.packages = with pkgs; [
    newsboat
  ];

  programs.newsboat = {
    enable = true;
    extraConfig = ''
    '';

    urls = [
      { url ="https://blog.fefe.de/rss.xml"; }
      { url ="https://correctiv.org/rss"; }
      { url ="https://netzpolitik.org/rss"; }
      { url ="https://www.youtube.com/feeds/videos.xml?channel_id=UCmtyQOKKmrMVaKuRXz02jbQ youtube cs \"~Sebastian Lague-yt\""; }
      { url ="https://www.youtube.com/feeds/videos.xml?channel_id=UCXy10-NEFGxQ3b4NVrzHw1Q youtube chess \"~Eric Rosen-yt\""; }
      { url ="https://www.youtube.com/feeds/videos.xml?channel_id=UC_AU7Wu_tKhFIRjrJZgYA9w youtube baduk \"~Go Pro Yeonwoo-yt\""; }
      { url ="https://www.youtube.com/feeds/videos.xml?channel_id=UC8ENHE5xdFSwx71u3fDH5Xw youtube vim \"~ThePrimeagen-yt\""; }
    ];
  };
}

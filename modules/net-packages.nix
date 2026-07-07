{pkgs, ...}:{

  users.users.yago.packages = with pkgs; [
    dig
    wget
    zeek
    trippy
    snicat
    netcat
    tshark
    tcpdump
    nethack
    suricata
    bandwhich
    inetutils
    
  ];

  home.packages = with pkgs; [
    putty
  ];

  programs.emacs.extraPackages = epkgs: with epkgs; [
    #doom
    eping
    ipcalc
    nethack
    # netrunner
    cabledolphin
  ];
}

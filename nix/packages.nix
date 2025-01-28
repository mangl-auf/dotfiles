{ pkgs, config, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    autoconf
    automake
    clang
    emacs
    file
    findutils
    git
    gnumake
    go
    home-manager
    htop
    hyprshot
    kitty
    localsend
    lua
    man-pages
    man-pages-posix
    mpv
    nekoray
    # amnezia-vpn
    libreoffice
    neofetch
    nodejs_22
    pnpm
    python313
    plocate
    hyprpolkitagent
    qbittorrent
    rlwrap
    telegram-desktop
    tmux
    tree
    udisks
    unzip
    vesktop
    vim
    wget
    wl-clipboard

    # mb nado udalit' ya hz))
    fpc
    sbcl
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    nerdfonts
    material-icons
    font-awesome
  ];
}

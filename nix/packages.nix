{ pkgs, ... }:

{
  nixpkgs.config = {
	allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [
    vim
    wget
    mpv
    telegram-desktop
    home-manager
    vesktop
    unzip
    qbittorrent
    localsend
    emacs
    nekoray
    git
    wl-clipboard
    kitty
  ];

  fonts.packages = with pkgs; [

  ];
}

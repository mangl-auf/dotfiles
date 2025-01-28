{ config, pkgs, ... }:

{
  home = {
    username = "mangl-auf";
    homeDirectory = "/home/mangl-auf";
    stateVersion = "24.05";

    packages = with pkgs; [
      neofetch
	  htop
    ];

	programs.zsh = {
	  enable = true;
	};

	programs.firefox.enable = true;
  }; 
}

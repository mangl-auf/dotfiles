{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
	  ./packages.nix
	  ./modules/bundle.nix
    ];
  
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  time.timeZone = "Asia/Vladivostok";

  services.printing.enable = true;

  programs.hyprland.enable = true;

  programs.nix-ld.enable = true;

  virtualisation.docker.enable = true;

  services.emacs.enable = true;
  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  services.fstrim.enable = true;

  services.udisks2.enable = true;

  documentation = {
	enable = true;
	man.enable = true;
	doc.enable = true;
	dev.enable = true;
  };

  services.zapret = {
	enable = true;
	params = [
	  "--dpi-desync-any-protocol"
	  "--dpi-desync=split2"
	  "--dpi-desync-split-seqovl=1"
	  "--dpi-desync-split-tls=sni"
	  "--wssize 1:6"
	];
  };
  
  system.stateVersion = "24.05"; # Did you read the comment? NO I FUCKING DIDN'T
}

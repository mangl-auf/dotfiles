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

  programs.hyprland.enable = true;

  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;

  services.printing.enable = true;

  programs.nix-ld.enable = true;

  virtualisation.docker.enable = true;

  services.emacs.enable = true;
  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  services.fstrim.enable = true;

  system.stateVersion = "24.05"; # Did you read the comment? NO I FUCKING DIDN'T
}

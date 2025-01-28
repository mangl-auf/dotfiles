{ pkgs, ... }:

{
  programs.zsh.enable = true;
  
  users = {
	defaultUserShell = pkgs.zsh;

    users.mangl-auf = {
      isNormalUser = true;
      description = "mc bivis";
      extraGroups = [ "networkmanager" "wheel" "docker" ];
      shell = pkgs.zsh;
    };
  };
}

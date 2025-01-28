{
  description = "nixos system config idk";

  inputs = {
	nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.05";
	
	home-manager = {
	  url = "github:nix-community/home-manager";
	  inputs.nixpkgs.follows = "nixpkgs";
	};
  };

  outputs = { nixpkgs, nixpkgs-unstable, ... }: 
  let
    system = "x86_64-linux";
  in {
    nixosConfiguration.workstation = nixpkgs.lib.nixosSystem {
	  inherit system;
	  modules = [ ./configuration.nix ];
	};

	homeConfigurations.mangl-auf = home-manager.lib.homeManagerConfiguration {
	  pkgs = nixpkgs.legacyPackages.${system};
	  modules = [ ./home-manager/home.nix ];
	};
  };
}

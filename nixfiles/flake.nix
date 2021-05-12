{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";
  };

  outputs = inputs@{ self, home-manager, nixpkgs, ... }: 
    let
      system = "x86_64-linux";
      mkHomeMachine = configurationNix: nixpkgs.lib.nixosSystem {
        inherit system;
	# Arguments to pass to all modules
	specialArgs = {inherit system inputs;};

	modules = ([
	  # System configuration
	  configurationNix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.demo = import ./user/home.nix {
	      inherit inputs system;
	      pkgs = import nixpkgs {inherit system;};
	    };
          }
	]);
      };
    in
    {
      nixosConfigurations.demo = mkHomeMachine ./system/configuration.nix;
    };
}

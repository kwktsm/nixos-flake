{ inputs, sharedModules, homeImports, ... }: {
  flake.nixosConfigurations =
    let
      inherit (inputs.nixpkgs.lib) nixosSystem;
    in
    {
      nixos = nixosSystem {
        specialArgs = {};
        modules =
          [
            ./nixos
	    ../modules/fonts.nix
	    ../modules/desktop.nix
	    {
	      home-manager = {
		users."kwkt".imports = homeImports."kwkt@nixos";
	      };
	    }
          ] ++ sharedModules;
      };
    };
}

{ self, inputs, ... }:
let
  module_args._module.args = {
    inherit inputs self;
  };
in
{
  imports = [
    {
      _module.args = {
        inherit module_args;

        sharedModules = [
          module_args
          inputs.disko.nixosModules.disko
	  inputs.home-manager.nixosModule
	  {
	    home-manager = {
	      useGlobalPkgs = true;
	      useUserPackages = true;
	    };
	  }
	  ./core.nix
	  ./nix.nix
        ];
      };
    }
  ];
}

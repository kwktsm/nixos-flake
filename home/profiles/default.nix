{ inputs, withSystem, module_args, ... }:

let
  user = "kwkt";

  sharedModules = [
    module_args
    (import ../. )
    inputs.hyprland.homeManagerModules.default
    inputs.anyrun.homeManagerModules.default
  ];

  homeImports = {
    "${user}@nixos" = [ ./nixos ] ++ sharedModules;
  };

  inherit (inputs.home-manager.lib) homeManagerConfiguration;
in
{
  imports = [
    { _module.args = { inherit homeImports; }; }
  ];

  flake = {
    homeConfigurations = withSystem "x86_64-linux" ({ pkgs, ... }: {
      "${user}@nixos" = homeManagerConfiguration {
        modules = homeImports."${user}@nixos";
	inherit pkgs;
      };
    });
  };
}

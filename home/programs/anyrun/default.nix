{ pkgs, inputs, ... }:

{
  programs.anyrun = {
    enable = true;

    config = {
      plugins = with inputs.anyrun.packages.${pkgs.system}; [
        applications
	randr
	rink
	shell
	symbols
      ];
    };
  };
}

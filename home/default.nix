{ lib, ... }:

{
  home = {
    username = "kwkt";
    homeDirectory = lib.mkForce "/home/kwkt";
    language.base = "en_US.UTF-8";
  };

  programs = {
    home-manager.enable = true;
  };

  home.stateVersion = "24.05";
}

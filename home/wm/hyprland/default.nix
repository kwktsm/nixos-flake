{ inputs, pkgs, ... }:

{
  imports = [ ./config.nix ];

  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
  };
}

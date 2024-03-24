{ ... }:

{
  wayland.windowManager.hyprland = {
    extraConfig = ''
      $mainMod = SUPER

      input {
        kb_layout = jp
      }

      bind = $mainMod, Return, exec, kitty
      bind = $mainMod SHIFT, Return, exec, kitty --class="termfloat"
      bind = $mainMod SHIFT, Q, exit
      bind = $mainMod, SUPER_L, exec, pkill anyrun || anyrun
    '';
  };
}

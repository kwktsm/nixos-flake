{ ... }:

{
  home = {
    sessionVariables = {
      BROWSER = "firefox";
      MOZ_ENABLE_WAYLAND = "1";
    };
  };

  programs.firefox = {
    enable = true;
  };
}

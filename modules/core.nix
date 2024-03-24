{ pkgs, ... }:

{
  environment = {
    systemPackages = with pkgs; [
      git
      neovim
      wget
      neofetch
      pciutils
    ];
  };

  users.mutableUsers = false;
  users.users = {
    root = {
    };

    kwkt = {
      initialHashedPassword = "$6$oPWbqWsEWVvcOcKi$amlX9X.D3fqJ0WUd65/vWKToIqIJqLoXTXUCGMlcBZPyNRG.0LiyAm..Ngjt1.1IOTCWXF6Y4oZXmpovfxMZV0";
      isNormalUser = true;
      extraGroups = [ "wheel" ];
    };
  };

  security.polkit.enable = true;
  security.sudo = {
    enable = true;
    extraConfig = ''
      kwkt ALL=(ALL) NOPASSWD:ALL
    '';
  };

  system.stateVersion = "24.05";
}

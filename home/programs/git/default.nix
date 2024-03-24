{
  programs.git = {
    enable = true;
    userName = "kwktsm";
    userEmail = "kwktsm@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
      safe.directory = "/etc/nixos";
    };
  };
}

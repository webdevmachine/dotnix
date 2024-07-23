{ config, ... }:
{
  users.users.webdevmachine = {
    home = "/home/webdevmachine";
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    hashedPasswordFile = config.age.secrets."users.root.password".path;
  };
}

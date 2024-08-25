{
  imports = [ ../../suites/darwin/core.nix ];

  networking.hostName = "NS-WRF00K0P79";
  nixpkgs.hostPlatform = "aarch64-darwin";
  system.stateVersion = 4;

  users.users = {
    webdevmachine = {
      name = "patrykszydlowski";
      home = "/Users/patrykszydlowski";
    };
  };

  home-manager.users = {
    webdevmachine = ../../users/webdevmachine/workbook.nix;
  };
}

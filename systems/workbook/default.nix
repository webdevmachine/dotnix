{
  imports = [ ../../suites/darwin/core.nix ];

  networking.hostName = "NS-WRF00K0P79";
  nixpkgs.hostPlatform = "aarch64-darwin";
  system.stateVersion = 4;

  users.users = {
    patrykszydlowski.home = "/Users/patrykszydlowski";
  };

  home-manager.users = {
    patrykszydlowski = ../../users/webdevmachine/workbook.nix;
  };
}

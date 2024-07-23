{
  boot = {
    consoleLogLevel = 0;
    kernelParams = [ "quiet" ];
    loader.timeout = 0;
    plymouth.enable = true;
    initrd = {
      verbose = true;
      systemd.enable = true;
    };
  };
}

{
  programs.direnv = {
    enable = true;
    silent = true;
    nix-direnv.enable = true;
    config = {
      global = {
        disable_stdin = true;
        load_dotenv = true;
        strict_env = true;
        warn_timeout = "5m";
      };
      whitelist.prefix = [ "~/projects" ];
    };
  };
}

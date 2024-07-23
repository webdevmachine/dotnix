{ inputs, ... }:
{
  imports = [ inputs.agenix-rekey.nixosModules.agenix-rekey ];

  age.rekey = {
    masterIdentities = [ ./identity.age ];
    storageMode = "local";
  };
}

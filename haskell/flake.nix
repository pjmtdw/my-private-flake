{
  inputs.haskell-flake.url = "github:srid/haskell-flake";
  outputs = inputs@{ nixpkgs, flake-parts, ... }: flake-parts.lib.mkFlake { inherit inputs; } {
    systems = [
      "x86_64-linux"
      "aarch64-darwin"
    ];
    imports = [
      inputs.haskell-flake.flakeModule
    ];
    perSystem = { pkgs, system, config, self', ... }: {
      haskellProjects.default =
        {
          devShell = {
            # On darwin, sandbox is disabled, so HLS can use the network.
            hlsCheck.enable = pkgs.stdenv.isDarwin;
          };
        };
    };
  };
}

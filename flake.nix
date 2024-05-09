{
  description = "Empty flake";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config = { allowUnfree = true; };
        };
      in {
        devShells.default = with pkgs;
          mkShell rec {
            buildInputs = [ libyaml ];
            # shellHook = ''
            #   function fish_right_prompt -d "Write out the right prompt"
            #       date '+%m/%d/%y'
            #   end
            # '';
          };
      });
}

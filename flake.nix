{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    systems.url = "github:nix-systems/default";
  };

  outputs =
    { nixpkgs, systems, ... }:
    let
      forEachSystem =
        f:
        nixpkgs.lib.genAttrs (import systems) (
          system:
          f {
            pkgs = import nixpkgs {
              inherit system;
            };
          }
        );
    in
    {
      devShells = forEachSystem (
        { pkgs }:
        {
          default = pkgs.mkShell {
            packages = with pkgs; [
              # Data analysis notebook
              python3.pkgs.python
              python3.pkgs.venvShellHook

              python3.pkgs.ipykernel
              python3.pkgs.notebook

              python3.pkgs.pandas
              python3.pkgs.matplotlib
              python3.pkgs.numpy
              python3.pkgs.seaborn
            ];
            venvDir = "./venv";
          };
        }
      );
    };
}

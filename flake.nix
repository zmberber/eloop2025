{
  description = "ELoop 2025 example paper";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  outputs = {
    self,
    nixpkgs,
    ...
  }: let
    systems =
      [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];
    forAllSystems = (
      function:
      nixpkgs.lib.genAttrs systems (
        system:
        function nixpkgs.legacyPackages.${system}
      )
    );
    forAllSystems2 = nixpkgs.lib.genAttrs systems;
  in {
    packages = forAllSystems (pkgs: {
      default = pkgs.writeShellScriptBin "genPdf" ''
        ${pkgs.texliveFull}/bin/latexmk
        ${pkgs.pandoc}/bin/pandoc pandocpaper.md -o pandocpaper.pdf
      '';
    });
    apps = nixpkgs.lib.genAttrs systems (
      system:
      {
        default = {
          type = "app";
          program = "${self.packages.${system}.default}/bin/genPdf";
        };
      }
    );
    devShells = forAllSystems2 (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        default = pkgs.mkShell {
          name = "eloop2025 shell";
          buildInputs = with pkgs; [
            texliveFull
            pandoc
          ];
          shellHook = ''
            echo "Welcome to the eloop 2025 shell!"
          '';
        };
      }
    );
  };
}

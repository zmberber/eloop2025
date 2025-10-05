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
  };
}

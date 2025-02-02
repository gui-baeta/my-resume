{
  description = "My CV; Using typst; Provides a working environment and building derivation.";

  inputs = {
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    { self, nixpkgs-unstable }:
    let
      pkgs = import nixpkgs-unstable {
        system = "x86_64-linux"; # Adjust for your system if necessary
      };

      typstInput = "cv.typ";
      pdfOutput = "Guilherme-Fontes-CV.pdf";
    in
    {
      devShells.x86_64-linux.default = pkgs.mkShell {
        name = "typst-devshell";
        buildInputs = [
          pkgs.typst
        ];
      };

      # Define a package for building the PDF
      packages.x86_64-linux.default = pkgs.stdenv.mkDerivation {
        name = "Guilherme Fontes CV";
        src = ./.; # Points to the local directory containing the Typst file
        buildInputs = [ pkgs.typst ];

        buildPhase = ''
          echo "Building PDF from ${typstInput} to ${pdfOutput}"
          typst compile ./${typstInput} ./${pdfOutput}
        '';

        installPhase = ''
          mkdir -p $out
          cp ./${pdfOutput} $out/
        '';
      };
    };
}

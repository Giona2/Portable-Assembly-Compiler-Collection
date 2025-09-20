{
  description = "Toolchain for the Portable Assembly ecosystem";

  inputs = {
  	nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in {
    	packages.${system}.default = pkgs.stdenv.mkDerivation {
        pname = "pacc";
        version = "0.1.2";

        src = ./.;

        buildInputs = with pkgs; [
        	pkg-config
          cargo
          rustc
        ];

        buildPhase = ''
        	cargo build --release
        '';

        installPhase = ''
        	mkdir -p $out/bin
         	cp target/release/* $out/bin
        '';
     	};
    };
}

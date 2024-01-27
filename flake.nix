{
  description = "A very basic flake";
  inputs = {
	nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  };

 
  outputs = {self, nixpkgs, ... }: 
  let 
    pkgs = import nixpkgs { system = "x86_64-linux"; config.allowUnfree = true;};
  in {
    	devShells.x86_64-linux.default = pkgs.mkShell {
      packages = with pkgs; [
        nodejs
        nodePackages.typescript-language-server
        jetbrains.webstorm
      ] ;

    };


    };


}

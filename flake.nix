{
  description = "ulid";

  inputs.nixpkgs.url = github:NixOS/nixpkgs/nixpkgs-unstable;

  outputs = { self, nixpkgs }: {
    defaultPackage.x86_64-darwin = nixpkgs.legacyPackages.x86_64-darwin.callPackage ./. {};
    module = import ./module.nix;
    overlay = import ./overlay.nix;
  };
}

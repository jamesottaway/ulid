{ pkgs, ... }:

{
  nixpkgs.overlays = [ (import ./overlay.nix) ];
  environment.systemPackages = [ pkgs.ulid ];
}
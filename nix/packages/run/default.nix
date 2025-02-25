{ pkgs, perSystem }:

pkgs.writeShellApplication {
  name = "run-scribble";
  text = "${pkgs.caddy}/bin/caddy file-server --root ${perSystem.self.scribble} --listen localhost:8080";
}

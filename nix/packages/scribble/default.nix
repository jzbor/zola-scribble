{ pkgs, flake }:

pkgs.stdenvNoCC.mkDerivation {
  name = "zola-scribble";
  src = flake;
  buildPhase = ''
    ${pkgs.zola}/bin/zola build --output-dir $out --base-url "/"
  '';
  installPhase = "";
}

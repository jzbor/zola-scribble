{ pkgs, perSystem }:

pkgs.writeShellApplication {
  name = "deploy-scribble";
  text = ''
    if [ "$#" != 1 ]; then
      echo "Usage: $0 <remote>" > /dev/stderr
      exit 1
    fi
    ${pkgs.rsync}/bin/rsync --recursive --compress --verbose --copy-links --update --delete --chmod 600 ${perSystem.self.scribble} "$1"
  '';
}

# auralisation-nix

Nix expression for auralisations with Python.

The Nix expression is a function returning a set with two sets of overrides:
- `masterOverrides` refers to the tip of the master branch of each package and
therefore lacks hashes
- `stableOverrides` refers to specific commits of the packages.

Furthermore, an attribute `stableNixpkgs` is included and represents the latest
commit the stable package set was tested against.

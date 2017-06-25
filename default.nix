{ }:

let
  fetchTarballFromGitHub = { repo, owner, rev, sha256 }:
    fetchTarball {
      url = "https://github.com/${owner}/${repo}/archive/${rev}.tar.gz";
      inherit sha256;
    };
in rec {

  masterOverrides = self: super: {
    acoustics = super.callPackage (fetchTarball https://github.com/python-acoustics/python-acoustics/archive/master.tar.gz );
    auraliser = super.callPackage (fetchTarball https://github.com/FRidh/auraliser/archive/master.tar.gz);
    geometry = super.callPackage (fetchTarball https://github.com/FRidh/geometry/archive/master.tar.gz);
    ism = super.callPackage (fetchTarball https://github.com/FRidh/ism/archive/master.tar.gz);
    noisy = super.callPackage (fetchTarball https://github.com/FRidh/noisy/archive/master.tar.gz);
    scintillations = super.callPackage (fetchTarball https://github.com/FRidh/scintillations/archive/master.tar.gz);
    streaming = super.callPackage (fetchTarball https://github.com/FRidh/streaming/archive/master.tar.gz);
    turbulence = super.callPackage (fetchTarball https://github.com/FRidh/turbulence/archive/master.tar.gz);
  };

  stableOverrides = self: super: {
    acoustics = super.callPackage (fetchTarballFromGitHub {
      owner = "python-acoustics";
      repo = "python-acoustics";
      rev = "728d57f660918809153f8a779064cc8fecc2702c";
      sha256 = "0ascpadj89j5ilk99pw03ff121q6qm4m3sps1svbwbp1gmwr1pvq";
    }){ };

    auraliser = super.callPackage (fetchTarballFromGitHub {
      owner = "FRidh";
      repo = "auraliser";
      rev = "2ac6cd1588df470514db0aeecfa849ad719f78d7";
      sha256 = "1k8y2av77slyw6i9d2lrn6d48jkd6p0xnvcsmrgrhn5jrq9l5vdf";
    }) { };

    geometry = super.callPackage (fetchTarballFromGitHub {
      owner = "FRidh";
      repo = "python-geometry";
      rev = "62cb6210bcad3b1e4c1a7e0516ca17138793c1b3";
      sha256 = "0phnxq31hlm8cinkmja6cp39x4ihnzxjg68y74nyvyvkc59yhc7x";
    }) { };

    ism = super.callPackage (fetchTarballFromGitHub {
      owner = "FRidh";
      repo = "ism";
      rev = "28d4f21d516b0dd42ca246cd0fa4a24dfb259094";
      sha256 = "1lidkd4b3fprz702xg6xafih4kapcd9l15ay9ax7jz75zdifkdqh";
    }) { };

    noisy = super.callPackage (fetchTarballFromGitHub {
      owner = "FRidh";
      repo = "noisy";
      rev = "b4b1c0ab777094d0d2acce7939f0039dd849920f";
      sha256 = "12iia88p2q21cq8h8wypc0wkqiss9jx71zmyzdcsx3zf7m73s4nw";
    }) { };

    scintillations = super.callPackage (fetchTarballFromGitHub {
      owner = "FRidh";
      repo = "scintillations";
      rev = "848aa0a6e7424cbc67bbabec129f05c0e6d4935a";
      sha256 = "0hqvqczq77cdv0wxvmajra4008bn39pzsk9w2zgxnmd7f009yin2";
    }) { };

    streaming = super.callPackage (fetchTarballFromGitHub {
      owner = "FRidh";
      repo = "streaming";
      rev = "bf8e61e932aea0b9007ceff174dab98ae80c6da0";
      sha256 = "1jfv3211lkf8x3syq03yf4qnrddig8cjr283blm7liv93zw4nzcq";
    }) { };

    turbulence = super.callPackage (fetchTarballFromGitHub {
      owner = "FRidh";
      repo = "turbulence";
      rev = "48cd96492efa9405f162c0aeaedab3bf3df49f55";
      sha256 = "1yhvlmps2xrfyxyq9ip87qbgpy3vb5i7bmg0y5sa03k080m4x8kv";
    }) { };
  };

  stableNixpkgs = "e33848568d3321c4f042d8352168a8cf006646e6";
}

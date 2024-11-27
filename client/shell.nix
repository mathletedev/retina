{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell rec {
  buildInputs = with pkgs; [
    # https://github.com/NixOS/nixpkgs/issues/341147#issuecomment-2359171650
    vulkan-loader
    libGL
    pkg-config
    gtk3
    pcre2.dev
    util-linux.dev
    libselinux
    libsepol
    libthai
    libdatrie
    xorg.libXdmcp
    xorg.libXtst
    lerc.dev
    libxkbcommon
    libepoxy
  ];
}

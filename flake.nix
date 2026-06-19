# ./configure --disable-update_cores --disable-builtinmbedtls --enable-systemmbedtls --disable-builtinzlib --disable-update_assets --disable-update_core_info --enable-dbus --enable-egl --enable-kms --enable-wifi

{
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
  outputs = { self, nixpkgs }:
    let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in
    {
      devShell.x86_64-linux =
        pkgs.mkShell {
          buildInputs =
            [
              pkgs.SDL2
              pkgs.alsa-lib
              pkgs.dbus
              pkgs.ffmpeg
              pkgs.flac
              pkgs.freetype
              pkgs.libGL
              pkgs.libGLU
              pkgs.libdrm
              pkgs.libgbm
              pkgs.libpulseaudio
              pkgs.libv4l
              pkgs.libxkbcommon
              pkgs.libxml2
              pkgs.mbedtls
              pkgs.mesa
              pkgs.pkg-config
              pkgs.python3
              pkgs.qt5.qtbase
              pkgs.spirv-tools
              pkgs.udev
              pkgs.libX11
              pkgs.libXdmcp
              pkgs.libXext
              pkgs.libXxf86vm
              pkgs.zlib
            ];
        };
    };
}

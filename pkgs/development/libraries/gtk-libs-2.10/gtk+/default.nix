{ xineramaSupport ? false
, stdenv, fetchurl, pkgconfig, x11, glib, atk
, pango, perl, libtiff, libjpeg, libpng, cairo, libXinerama ? null, libXrandr
}:

assert x11.buildClientLibs;
assert xineramaSupport -> libXinerama != null;


stdenv.mkDerivation {
  name = "gtk+-2.10.14";
  src = fetchurl {
    url = http://web.archive.org/web/20141222010622/http://ftp.cse.buffalo.edu/pub/Gnome/sources/gtk+/2.10/gtk+-2.10.14.tar.bz2;
    sha256 = "1qjdx9kdc533dajdy1kv3ssxzh7gz7j7vzgw0ax910q4klil88yh";
  };
  buildInputs = [
    pkgconfig perl libtiff libjpeg libpng cairo libXrandr
    (if xineramaSupport then libXinerama else null)
  ];
  propagatedBuildInputs = [x11 glib atk pango];
  inherit libtiff libjpeg libpng;
}

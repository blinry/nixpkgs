{stdenv, fetchurl, pkgconfig, x11, glib, cairo, libpng}:

assert x11.buildClientLibs;

stdenv.mkDerivation {
  name = "pango-1.14.10";
  src = fetchurl {
    url = http://web.archive.org/web/20141221233759/http://ftp.cse.buffalo.edu/pub/Gnome/sources/pango/1.14/pango-1.14.10.tar.bz2;
    md5 = "e9fc2f8168e74e2fa0aa8238ee0e9c06";
  };
  buildInputs = [pkgconfig libpng];
  propagatedBuildInputs = [x11 glib cairo];
}

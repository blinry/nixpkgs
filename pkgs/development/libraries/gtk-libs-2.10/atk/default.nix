{stdenv, fetchurl, pkgconfig, glib, perl}:

assert pkgconfig != null && glib != null && perl != null;

stdenv.mkDerivation {
  name = "atk-1.12.4";
  src = fetchurl {
    url = http://web.archive.org/web/20141221205042/http://mirror.umd.edu/gnome/sources/atk/1.12/atk-1.12.4.tar.bz2;
    md5 = "0a2c6a7bbc380e3a3d94e9061f76a849";
  };
  buildInputs = [pkgconfig perl];
  propagatedBuildInputs = [glib];
}

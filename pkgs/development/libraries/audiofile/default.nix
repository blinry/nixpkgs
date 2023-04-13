{stdenv, fetchurl}:

stdenv.mkDerivation {
  name = "audiofile-0.2.6";
  src = fetchurl {
    url = http://ftp.sunet.se/mirror/archive/ftp.sunet.se/pub/vendor/sun/freeware/SOURCES/audiofile-0.2.6.tar.gz;
    sha256 = "1a921w6jwcnkmx3vm091qrj7109jzri6kw4ygjq6ym91dssnfqab";
  };
}

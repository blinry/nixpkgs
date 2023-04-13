args: with args;
stdenv.mkDerivation {
#The current release is still in a testing phase, though it should be stable
# (neither the ABI or API will break). Please try it out and let me know how it
#  works. :-)

  name = "openal-soft-1.1.93";

  src = fetchurl {
    url = http://web.archive.org/web/20171015183058/http://kcat.strangesoft.net/openal-releases/openal-soft-1.1.93.tar.bz2;
    sha256 = "162nyv4jy6qzi7s5q3wpdawfph6npyn1n4wjf21haxdxq0mmp6l7";
  };

  buildInputs = [cmake alsaLib];

  configurePhase = "cmake . -DCMAKE_INSTALL_PREFIX=$out";
  
  meta = {
      description = "openal alternative";
      homepage = http://kcat.strangesoft.net/openal.html;
      license = "GPL2";
  };
}

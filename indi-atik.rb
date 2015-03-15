require 'formula'

class IndiAtik < Formula
  homepage 'http://www.indilib.org'
  url 'http://download.cloudmakers.eu/indi-atik-0.25.tar.gz'
  sha1 'bdc8b25a824af5cd61ade7e33f800a3c009ec839'

  depends_on 'cmake' => :build
  depends_on 'polakovic/astronomy/libindi'

  def install
    prefix.install "COPYRIGHT.txt"
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
    share.install Dir["share/*"]
    system "install_name_tool -id /usr/local/libatikccd.0.dylib #{prefix}/lib/libatikccd.0.dylib"
    system "install_name_tool -change /Users/polakovic/Development/indi-atik/libatikccd.0.dylib /usr/local/lib/libatikccd.0.dylib #{prefix}/bin/indi_atik_ccd"
    system "install_name_tool -change /Users/polakovic/Development/indi-atik/libatikccd.0.dylib /usr/local/lib/libatikccd.0.dylib #{prefix}/bin/atik_ccd_test"
  end
end

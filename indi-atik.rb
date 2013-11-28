require 'formula'

class IndiAtik < Formula
  homepage 'http://www.indilib.org'
  url 'http://download.cloudmakers.eu/indi-atik-0.5.tar.gz'
  sha1 '160ab7e23760d9b35835c1706216b57d507a87df'

  depends_on 'polakovic/astronomy/libindi'
  depends_on 'libusb'
  depends_on 'libusb-compat'
  depends_on 'cfitsio'

  def install
    bin.install Dir['bin/*']
    share.install Dir['share/*']
  end
end

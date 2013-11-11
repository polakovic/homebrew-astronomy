require 'formula'

class IndiAtik < Formula
  homepage 'http://www.indilib.org'
  url 'http://download.cloudmakers.eu/indi-atik-0.4.tar.gz'
  sha1 '69cd2a9b977ea7e9e70d1b094879351d4c8e09d2'

  depends_on 'polakovic/astronomy/libindi'
  depends_on 'libusb'
  depends_on 'libusb-compat'
  depends_on 'cfitsio'

  def install
    bin.install Dir['bin/*']
    share.install Dir['share/*']
  end
end

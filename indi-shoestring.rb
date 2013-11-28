require 'formula'

class IndiShoestring < Formula
  homepage 'http://www.indilib.org'
  url 'http://download.cloudmakers.eu/indi-shoestring-0.2.tar.gz'
  sha1 'd65c57b1decbf55f8472af1da08f07816d050922'

  depends_on 'polakovic/astronomy/libindi'
  depends_on 'libusb'

  def install
    bin.install Dir['bin/*']
    share.install Dir['share/*']
  end
end

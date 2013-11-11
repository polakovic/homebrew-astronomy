require 'formula'

class IndiShoestring < Formula
  homepage 'http://www.indilib.org'
  url 'http://download.cloudmakers.eu/indi-shoestring-0.1.tar.gz'
  sha1 '1e1ca3dfb6c08f2a9bc4f098bb9d0e65d2a4acfc'

  depends_on 'polakovic/astronomy/libindi'
  depends_on 'libusb'

  def install
    bin.install Dir['bin/*']
    share.install Dir['share/*']
  end
end

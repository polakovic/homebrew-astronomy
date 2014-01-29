require 'formula'

class IndiShoestring < Formula
  homepage 'http://www.indilib.org'
  url 'http://download.cloudmakers.eu/indi-shoestring-0.4.tar.gz'
  sha1 'feef26e889fd4d838eed09807cf1dd3955f4a235'

  depends_on 'cmake' => :build
  depends_on 'polakovic/astronomy/libindi'

  def install
    bin.install Dir['bin/*']
    share.install Dir['share/*']
  end
end

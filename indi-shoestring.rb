require 'formula'

class IndiShoestring < Formula
  homepage 'http://www.indilib.org'
  url 'http://download.cloudmakers.eu/indi-shoestring-0.11.tar.gz'
  sha1 '631a8bdbff27ce253d746af733993fc03a0c1fdb'

  depends_on 'cmake' => :build
  depends_on 'polakovic/astronomy/libindi'

  def install
    prefix.install "COPYRIGHT.txt"
    bin.install Dir["bin/*"]
    share.install Dir["share/*"]
  end
end

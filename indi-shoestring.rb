require 'formula'

class IndiShoestring < Formula
  homepage 'http://www.indilib.org'
  url 'http://download.cloudmakers.eu/indi-shoestring-0.4.tar.gz'
  sha1 '35013f2e1e9f823d578004483e0d49ae4897b90a'

  depends_on 'cmake' => :build
  depends_on 'polakovic/astronomy/libindi'

  def install
    bin.install Dir['bin/*']
    share.install Dir['share/*']
  end
end

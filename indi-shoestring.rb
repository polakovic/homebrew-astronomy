require 'formula'

class IndiShoestring < Formula
  homepage 'http://www.indilib.org'
  url 'http://download.cloudmakers.eu/indi-shoestring-0.7.tar.gz'
  sha1 '0d9bccb914f0d1f633e1a0c33676c5eef2a7b98a'

  depends_on 'cmake' => :build
  depends_on 'polakovic/astronomy/libindi'

  def install
    prefix.install "COPYRIGHT.txt"
    bin.install Dir["bin/*"]
    share.install Dir["share/*"]
  end
end

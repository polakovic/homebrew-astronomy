require 'formula'

class IndiAtik < Formula
  homepage 'http://www.indilib.org'
  url 'http://download.cloudmakers.eu/indi-atik-0.9.tar.gz'
  sha1 '2abbd6bf0540b7092e73fc72c7de57f259c08083'

  depends_on 'cmake' => :build
  depends_on 'polakovic/astronomy/libindi'

  def install
    bin.install Dir['bin/*']
    share.install Dir['share/*']
  end
end

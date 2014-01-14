require 'formula'

class IndiAtik < Formula
  homepage 'http://www.indilib.org'
  url 'http://download.cloudmakers.eu/indi-atik-0.7.tar.gz'
  sha1 'a424687f5a52c8e6ffa6c2987dff60c24a7b3657'

  depends_on 'cmake' => :build
  depends_on 'polakovic/astronomy/libindi'

  def install
    bin.install Dir['bin/*']
    share.install Dir['share/*']
  end
end

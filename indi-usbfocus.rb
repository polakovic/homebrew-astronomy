require 'formula'

class IndiUsbfocus < Formula
  homepage 'http://www.indilib.org'
  url 'http://download.cloudmakers.eu/indi-usbfocus-0.3.tar.gz'
  sha1 'd6e60a25e895a99fb390d18a8a057aee3b463acf'

  depends_on 'cmake' => :build
  depends_on 'polakovic/astronomy/libindi'

  def install
    prefix.install "COPYRIGHT.txt"
    bin.install Dir["bin/*"]
    share.install Dir["share/*"]
  end
end

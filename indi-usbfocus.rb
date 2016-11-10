require 'formula'

class IndiUsbfocus < Formula
  homepage 'http://www.indilib.org'
  url 'http://download.cloudmakers.eu/indi-usbfocus-0.3.tar.gz'
  sha256 'e671d756fe611d21fa54f3894fa6d1d694450af814f557451af9eafe0ce9bc42'

  depends_on 'cmake' => :build
  depends_on 'polakovic/astronomy/libindi'

  def install
    prefix.install "COPYRIGHT.txt"
    bin.install Dir["bin/*"]
    share.install Dir["share/*"]
  end
end

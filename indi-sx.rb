require 'formula'

class IndiSx < Formula
  homepage 'http://www.indilib.org'
  url 'http://svn.code.sf.net/p/indi/code/trunk/3rdparty/indi-sx', :using => :svn, :revision => '959'
  head 'http://svn.code.sf.net/p/indi/code/trunk/3rdparty/indi-sx', :using => :svn
  version "0.9.6"

  depends_on 'cmake' => :build
  depends_on 'polakovic/astronomy/libindi'
  depends_on 'libusb'
  depends_on 'libusb-compat'
  depends_on 'cfitsio'

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end

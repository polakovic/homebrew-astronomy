require 'formula'

class Libindi < Formula
  homepage 'http://www.indilib.org'
  url 'http://svn.code.sf.net/p/indi/code/trunk/libindi', :using => :svn
  version "0.9.7"

  depends_on 'cmake' => :build
  depends_on 'polakovic/astronomy/libnova'
  depends_on 'libusb'
  depends_on 'cfitsio'

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

end
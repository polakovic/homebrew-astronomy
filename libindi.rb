require 'formula'

class Libindi < Formula
  homepage 'http://www.indilib.org'
  url 'http://svn.code.sf.net/p/indi/code/trunk/libindi', :using => :svn, :revision => '1525'
  head 'http://svn.code.sf.net/p/indi/code/trunk/libindi', :using => :svn 
  version "0.9.8.1525"

  depends_on 'cmake' => :build
  depends_on 'polakovic/astronomy/libnova'
  depends_on 'libusb'
  depends_on 'cfitsio'
  depends_on 'gsl'

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

end

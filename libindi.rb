require 'formula'

class Libindi < Formula
  homepage 'http://www.indilib.org'
  url 'http://svn.code.sf.net/p/indi/code/trunk/libindi', :using => :svn, :revision => '1954'
  head 'http://svn.code.sf.net/p/indi/code/trunk/libindi', :using => :svn 
  version "0.9.9.1954"

  depends_on 'cmake' => :build
  depends_on 'polakovic/astronomy/libnova'
  depends_on 'polakovic/astronomy/libcfitsio'
  depends_on 'libusb'
  depends_on 'gsl'

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

end

require 'formula'

class IndiMaxdomeii < Formula
  homepage 'http://www.indilib.org'
  url 'http://svn.code.sf.net/p/indi/code/trunk/3rdparty/indi-maxdomeii', :using => :svn, :revision => '2065'
  head 'http://svn.code.sf.net/p/indi/code/trunk/3rdparty/indi-maxdomeii', :using => :svn
  version "1.0.0.2065"

  depends_on 'cmake' => :build
  depends_on 'polakovic/astronomy/libindi'

  def install
    system "cmake", ".", "-DCMAKE_CXX_FLAGS=-march=core2", *std_cmake_args
    system "make", "install"
  end
end

require 'formula'

class IndiQhy < Formula
  homepage 'http://www.indilib.org'
  url 'http://svn.code.sf.net/p/indi/code/trunk/3rdparty/indi-qhy', :using => :svn, :revision => '2307'
  head 'http://svn.code.sf.net/p/indi/code/trunk/3rdparty/indi-qhy', :using => :svn 
  version "1.0.0.2307"

  depends_on 'cmake' => :build
  depends_on 'polakovic/astronomy/libindi'
  depends_on 'polakovic/astronomy/libqhy'

  def install
    system "cmake", ".", "-DCMAKE_CXX_FLAGS=-march=core2", *std_cmake_args
    system "make", "install"
  end
end

require 'formula'

class IndiEqmod < Formula
  homepage 'http://www.indilib.org'
  url 'http://svn.code.sf.net/p/indi/code/trunk/3rdparty/indi-eqmod', :using => :svn, :revision => '1393'
  head 'http://svn.code.sf.net/p/indi/code/trunk/3rdparty/indi-eqmod', :using => :svn 
  version "0.9.7.1393"

  depends_on 'cmake' => :build
  depends_on 'polakovic/astronomy/libindi'

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end

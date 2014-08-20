require 'formula'

class IndiSpectracyber < Formula
  homepage 'http://www.indilib.org'
  url 'http://svn.code.sf.net/p/indi/code/trunk/3rdparty/indi-spectracyber', :using => :svn, :revision => '1751'
  head 'http://svn.code.sf.net/p/indi/code/trunk/3rdparty/indi-spectracyber', :using => :svn
  version "0.9.8.1751"

  depends_on 'cmake' => :build
  depends_on 'polakovic/astronomy/libindi'

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end

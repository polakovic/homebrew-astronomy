require 'formula'

class Libqhy < Formula
  homepage 'http://www.indilib.org'
  url 'http://svn.code.sf.net/p/indi/code/trunk/3rdparty/libqhy', :using => :svn, :revision => '2439'
  version "1.1.0.2439"

  depends_on 'cmake' => :build

  def install
    system "cmake", ".", "-DCMAKE_CXX_FLAGS=-march=core2", *std_cmake_args
    system "make", "install"
  end

end

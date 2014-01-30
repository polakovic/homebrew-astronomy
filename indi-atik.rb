require 'formula'

class IndiAtik < Formula
  homepage 'http://www.indilib.org'
  url 'http://download.cloudmakers.eu/indi-atik-0.9.tar.gz'
  sha1 '6c01ed75ae89c3f282b3883681f132a1ee6be1b2'

  depends_on 'cmake' => :build
  depends_on 'polakovic/astronomy/libindi'

  def install
    system "cmake", ".", "-DBREW=1", *std_cmake_args
    system "make", "install"
  end
end

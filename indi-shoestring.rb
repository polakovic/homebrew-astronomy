require 'formula'

class IndiShoestring < Formula
  homepage 'http://www.indilib.org'
  url 'http://download.cloudmakers.eu/indi-shoestring-0.4.tar.gz'
  sha1 'e68ed226dcd9057e317072294baf0790c986d00c'

  depends_on 'cmake' => :build
  depends_on 'polakovic/astronomy/libindi'

  def install
    system "cmake", ".", "-DBREW=1", *std_cmake_args
    system "make", "install"
  end
end

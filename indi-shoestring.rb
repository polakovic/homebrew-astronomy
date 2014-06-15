require 'formula'

class IndiShoestring < Formula
  homepage 'http://www.indilib.org'
  url 'http://download.cloudmakers.eu/indi-shoestring-0.6.tar.gz'
  sha1 '6947bf964b73243585826331f8c47feaa2a13146'

  depends_on 'cmake' => :build
  depends_on 'polakovic/astronomy/libindi'

  def install
    system "cmake", ".", "-DBREW=1", *std_cmake_args
    system "make", "install"
  end
end

require 'formula'

class IndiShoestring < Formula
  homepage 'http://www.indilib.org'
  url 'http://download.cloudmakers.eu/indi-shoestring-0.5.tar.gz'
  sha1 '7c958f120d4c3092d6a98f4be66a6519722bbc2c'

  depends_on 'cmake' => :build
  depends_on 'polakovic/astronomy/libindi'

  def install
    system "cmake", ".", "-DBREW=1", *std_cmake_args
    system "make", "install"
  end
end

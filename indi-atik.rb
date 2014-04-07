require 'formula'

class IndiAtik < Formula
  homepage 'http://www.indilib.org'
  url 'http://download.cloudmakers.eu/indi-atik-0.9.tar.gz'
  sha1 'c75e976e022282af542df4c3fe97bc7dc344136c'

  depends_on 'cmake' => :build
  depends_on 'polakovic/astronomy/libindi'

  def install
    system "cmake", ".", "-DBREW=1", *std_cmake_args
    system "make", "install"
  end
end

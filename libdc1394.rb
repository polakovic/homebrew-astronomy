require 'formula'

class Libdc1394 < Formula
  homepage 'http://libdc1394.sourceforge.net'
  url 'http://downloads.sourceforge.net/project/libdc1394/libdc1394-2/2.2.3/libdc1394-2.2.3.tar.gz'
  sha1 'c40bdf37c64e0bce5dcc3e6e868d226e309a3a19'

  depends_on 'pkgconfig' => :build

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

end

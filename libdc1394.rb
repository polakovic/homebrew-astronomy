require 'formula'

class Libdc1394 < Formula
  homepage 'http://libdc1394.sourceforge.net'
  url 'http://downloads.sourceforge.net/project/libdc1394/libdc1394-2/2.2.3/libdc1394-2.2.3.tar.gz'
  sha256 '4a197880657f54519683ce014e613acdfd909767a69873eb23409fe423232bdd'

  depends_on 'pkgconfig' => :build

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

end

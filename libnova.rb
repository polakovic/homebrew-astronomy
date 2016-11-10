require 'formula'

class Libnova < Formula
  homepage 'http://libnova.sourceforge.net'
  url 'http://downloads.sourceforge.net/project/libnova/libnova/v%200.15.0/libnova-0.15.0.tar.gz'
  sha256 '7c5aa33e45a3e7118d77df05af7341e61784284f1e8d0d965307f1663f415bb1'

  depends_on 'autoconf' => :build
  depends_on 'automake' => :build
  depends_on 'libtool' => :build

  def install
    ENV.append "CFLAGS", "-march=core2"
    ENV.append "CPPFLAGS", "-march=core2"
    ENV.append "CXXFLAGS", "-march=core2"
    system "autoreconf", "--force", "--install"
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

end

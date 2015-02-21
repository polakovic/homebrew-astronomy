require "formula"

class Libcfitsio < Formula
  homepage "http://heasarc.gsfc.nasa.gov/docs/software/fitsio/fitsio.html"
  url "http://heasarc.gsfc.nasa.gov/FTP/software/fitsio/c/cfitsio3370.tar.gz"
  sha1 "48bd6389dcff3228508eec70384f2cae3a88ff32"
  version "3.370"

  def install
    ENV.append "CFLAGS", "-march=core2"
    ENV.append "CPPFLAGS", "-march=core2"
    ENV.append "CXXFLAGS", "-march=core2"
    system "./configure", "--prefix=#{prefix}"
    system "make shared"
    system "make install"

    if build.with? "examples"
      system "make fpack funpack"
      bin.install "fpack", "funpack"

      resource("examples").stage do
        # compressed_fits.c does not work (obsolete function call)
        (Dir["*.c"] - ["compress_fits.c"]).each do |f|
          system ENV.cc, f, "-I#{include}", "-L#{lib}", "-lcfitsio", "-lm", "-o", "#{bin}/#{f.sub('.c', '')}"
        end
      end
    end
  end
end

require 'formula'

class Libindi < Formula
  homepage 'http://www.indilib.org'
  url 'http://svn.code.sf.net/p/indi/code/trunk/libindi', :using => :svn, :revision => '882'
  head 'http://svn.code.sf.net/p/indi/code/trunk/libindi', :using => :svn
  version "0.9.6"

  depends_on 'cmake' => :build
  depends_on 'polakovic/astronomy/libnova'
  depends_on 'libusb-compat'
  depends_on 'cfitsio'

  def patches
    # fixes compile on OS X 10.9
    DATA
  end

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

end

__END__
diff --git a/libs/indibase/basedevice.h b/libindi/libs/indibase/basedevice.h
--- a/libs/indibase/basedevice.h	(revision 882)
+++ b/libs/indibase/basedevice.h	(working copy)
@@ -22,6 +22,9 @@
 #include <vector>
 #include <string>
 
+#include <locale.h>
+#include <pthread.h>
+
 #include "indiapi.h"
 #include "indidevapi.h"
 #include "indibase.h"

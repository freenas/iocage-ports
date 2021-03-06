--- cmake/ssl.cmake.orig	2019-10-21 05:21:41 UTC
+++ cmake/ssl.cmake
@@ -202,6 +202,12 @@ MACRO (MYSQL_CHECK_SSL)
        OPENSSL_MAJOR_VERSION STREQUAL "1"
       )
       SET(OPENSSL_FOUND TRUE)
+    ELSEIF(OPENSSL_INCLUDE_DIR AND
+       OPENSSL_LIBRARY   AND
+       CRYPTO_LIBRARY      AND
+       OPENSSL_MAJOR_VERSION STREQUAL "2"
+      )
+      SET(OPENSSL_FOUND TRUE)
     ELSE()
       SET(OPENSSL_FOUND FALSE)
     ENDIF()

export LD_LIBRARY_PATH=/workspace/scripts/../llvm/ext/sqlite-3.28.0/lib/lnx64

/workspace/llvm/hls-build/bin/opt \
-S test.ll -o test1.ll


#  -load ../build/lib/libHLSExtract.so \
# --get-cheri-hls-head \
# -S test.ll -o test1.ll

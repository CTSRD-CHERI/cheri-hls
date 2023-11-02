# Extract HLS information to header file
opt -S vect_mult.ll \
-enable-new-pm=0 \
-load ../../hls_extract/build/lib/libHLSExtract.so \
-get-cheri-hls-head \
-header=cheri_vect_mult.h \
> /dev/null

# Grab offset information
cp vect_mult_prj/solution1/impl/misc/drivers/vect_mult_v1_0/src/xvect_mult_hw.h .

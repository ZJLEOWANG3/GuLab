#!/bin/bash

# install location
inst_prefix="$HOME/opt/htslib/1.17"
inst_inc="$inst_prefix/include"
inst_lib="$inst_prefix/lib"

# gcc preferences
gcc_prefix="/shared/centos7/gcc/11.1.0"
gcc_inc="$gcc_prefix/include"
gcc_lib="$gcc_prefix/lib64"

CC="$gcc_prefix/bin/gcc" \
CFLAGS="-I$inst_inc" \
LDFLAGS="-L$gcc_lib -L$inst_lib -Wl,-rpath,\$ORIGIN/../lib,-rpath,$gcc_lib" \
../configure \
	--prefix="$inst_prefix"

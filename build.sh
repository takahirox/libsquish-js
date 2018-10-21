#! /bin/bash

mkdir libsquish
cd libsquish
wget -O libsquish.tgz https://sourceforge.net/projects/libsquish/files/latest/download
tar -xvzf libsquish.tgz
cp ../export.cpp ./

emcc -O2 -o ../squish.js ./*.cpp --memory-init-file 0 -s WASM=1 -s ALLOW_MEMORY_GROWTH=1 -s EXPORTED_FUNCTIONS="['_GetStorageRequirements','_CompressImage','_DecompressImage']" -s EXTRA_EXPORTED_RUNTIME_METHODS="['ccall', 'cwrap']"

rm ./export.cpp
cd ../
rm -rf ./libsquish


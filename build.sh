#!/bin/sh

clang++ --std=c++17 -fmodules-ts --precompile -o foo.pcm foo.cppm
clang++ --std=c++17 -fmodules-ts -c foo.pcm -o foo.o
clang++ --std=c++17 -fmodules-ts -fprebuilt-module-path=. -o test-modules main.cpp foo.o

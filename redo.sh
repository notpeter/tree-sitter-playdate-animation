#!/usr/bin/env bash
set -e

rm -rf bindings/ src/ .build/
rm -rf *.dylib.dSYM *.gyp *.dylib *.pc *.a
rm -f makefile

tree-sitter generate
tree-sitter build
make clean
make
make test
tree-sitter parse animation.txt

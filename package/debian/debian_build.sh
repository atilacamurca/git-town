#!/bin/sh
mkdir -pv usr/lib/git-core &&
mkdir -pv usr/share/man/man1 &&
cp -r ../../src/* usr/lib/git-core &&
cp -r ../../man/man1 /usr/share/man/man1 &&
debuild -us -uc &&
rm -rf usr


#!/bin/sh
if [ -z "$1" ]; then
  echo "ERROR: need to specify version"
  exit
fi

mkdir facebox
cp images/*.png facebox
cp images/*.gif facebox
cp javascripts/facebox.js facebox
cp stylesheets/facebox.css facebox
cp README.txt facebox
tar -cf facebox-$1.tar facebox/
gzip -9 facebox-$1.tar
rm -rf facebox
mv facebox-$1.tar.gz releases

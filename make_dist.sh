#!/bin/sh
if [ -z "$1" ]; then
  echo Usage: $0 \<version-string\> >&2
  exit
fi

VERSION="$1"
OUT_DIR=flintjs-${VERSION}

# copy all relevant files into an out directory
rm -rf ${OUT_DIR}
mkdir ${OUT_DIR}
cp -rf README bin flintjs.build.xml jsbuildtasks lib template ${OUT_DIR}

# remove unnecessary files
find ${OUT_DIR} -iname .DS_Store -exec rm {} \;

# zip the out directory
zip -qr ${OUT_DIR}.zip ${OUT_DIR}
rm -rf ${OUT_DIR}

echo
echo ------------------
echo Created ${OUT_DIR}.zip

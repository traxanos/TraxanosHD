#!/bin/bash

# generate
rm -rf build
mkdir -p build/usr/share/enigma2/TraxanosHD
mkdir -p build/control

# copy assets
cp -r skin_default build/usr/share/enigma2/TraxanosHD/
cp -r images build/usr/share/enigma2/TraxanosHD/
cp -r fonts build/usr/share/enigma2/TraxanosHD/
cp -r extensions build/usr/share/enigma2/TraxanosHD/
cp *.png build/usr/share/enigma2/TraxanosHD/

# copy skin
cp skin.xml build/usr/share/enigma2/TraxanosHD/

# define version based on time
VERSION=0.1-$(date +%Y%m%d%H%M)

# generate control file
cat > build/control/control << EOF
Package: enigma2-skin-traxanoshd
Version: ${VERSION}
Description: TraxanosHD
Architecture: all
Section: extra
Priority: optional
Maintainer: TraxanosHD
Homepage: https://github.com/traxanos/TraxanosHD
Source: https://github.com/traxanos/TraxanosHD
Depends:
EOF

# generate debian-binary
echo "2.0" > build/debian-binary

# clean uneeded files
find build -name \.DS_Store -delete

if [[ "$OSTYPE" == "darwin"* ]]; then
  TARBIN="gtar"
else
  TARBIN="tar"
fi

# pack
$TARBIN --format=gnu -C build/control -czf build/control.tar.gz control
$TARBIN --format=gnu -C build -czf build/data.tar.gz usr/

echo "generate build/enigma2-skin-traxanoshd_${VERSION}_all.ipk"
$TARBIN --format=gnu -C build -czf build/enigma2-skin-traxanoshd_${VERSION}_all.ipk debian-binary data.tar.gz control.tar.gz

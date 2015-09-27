#!/bin/sh
mkdir -p content
cd content
wget -O cover.jpg http://pd-tutorial.com/KreidlerCov.jpg
wget -r -nH --cut-dirs=1 http://pd-tutorial.com/english/
cp ../pempd.opf ../toc.ncx .
cat ../fix.css >> style.css
cd ..
./kindlegen/kindlegen ./content/toc.ncx ./content/pempd.opf -c2 -verbose -gif -o pempd.mobi
mv ./content/pempd.mobi .

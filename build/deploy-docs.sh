#! /bin/sh
mkdir temp_web

rm -rf temp_web/*

# build site
npm run deploy:build
cd temp_web
git clone --depth 1 -b gh-pages --single-branch https://github.com/goocanFE/goocan-pc-ui.git && cd goocan-pc-ui
# build sub folder

SUB_FOLDER='2.15'
mkdir $SUB_FOLDER
rm -rf *.js *.css *.map static
rm -rf $SUB_FOLDER/**
cp -rf ../../examples/element-ui/** .
cp -rf ../../examples/element-ui/** $SUB_FOLDER/
git add -A .
git commit -m "$SUB_FOLDER"
git push origin gh-pages
cd ../..

echo "DONE, Bye~"
exit 0

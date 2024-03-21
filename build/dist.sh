yarn run clean
echo "clean Done ..."
yarn run build:file
echo "build:file Done ..."
yarn run lint
echo "lint Done ..."
webpack --config build/webpack.conf.js
echo "build webpack.config.js ..."
webpack --config build/webpack.common.js
echo "build webpack.common.js ..."
webpack --config build/webpack.component.js
echo "build webpack.component.js ..."
yarn run build:utils
echo "build utils ..."
yarn run build:umd
echo "build umd ..."
yarn run build:theme
echo "build theme ..."
#!/bin/sh

wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
source ~/.bashrc
nvm install 10.11.0
mkdir node_dir
pushd node_dir
npm install express
npm install express-generator
express auto_test
popd
pushd node_dir/auto_test
npm install redis --save
npm install
popd

echo ""
echo "-------INSTALLATION COMPLETE--------"
echo "type following commands"
echo ""
echo "  cd node_dir/auto_test"
echo "  npm start"
echo ""
echo "then open any browser and access http://localhost:3000"
echo "you will see something if installation successfully completed"
echo "------------------------------------"

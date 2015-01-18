#!/bin/bash

function move_ipk() {
  IPKNAME=$(ls build/enigma*.ipk)
  echo $IPKNAME
  IPKNEWNAME=$(echo $IPKNAME | sed "s/build\///" | sed "s/traxanoshd_/traxanoshd_$1_/")
  echo $IPKNEWNAME
  mv $IPKNAME ipks/$IPKNEWNAME
}

rm -rf ipks
mkdir -p ipks
ruby generate.rb
bash build.sh
move_ipk "violette_vti8"
grey=1 ruby generate.rb
bash build.sh
move_ipk "grey_vti8"
beta81=1 ruby generate.rb
bash build.sh
move_ipk "violette_vti81"
beta81=1 grey=1 ruby generate.rb
bash build.sh
move_ipk "grey_vti81"

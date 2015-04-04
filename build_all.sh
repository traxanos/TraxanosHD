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

# Green
green=1 ruby generate.rb
bash build.sh
move_ipk "green"

# Red
red=1 ruby generate.rb
bash build.sh
move_ipk "red"

# Blue
blue=1 ruby generate.rb
bash build.sh
move_ipk "blue"

# Violett
violett=1 ruby generate.rb
bash build.sh
move_ipk "violett"

# Grey
ruby generate.rb
bash build.sh
move_ipk "grey"

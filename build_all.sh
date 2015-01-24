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

# Green 8.1
green=1 beta81=1 ruby generate.rb
bash build.sh
move_ipk "green_vti81"

# Green
green=1 ruby generate.rb
bash build.sh
move_ipk "green_vti8"

# Green 8.1
red=1 beta81=1 ruby generate.rb
bash build.sh
move_ipk "red_vti81"

# Green
red=1 ruby generate.rb
bash build.sh
move_ipk "red_vti8"

# Blue 8.1
green=1 beta81=1 ruby generate.rb
bash build.sh
move_ipk "blue_vti81"

# Blue
green=1 ruby generate.rb
bash build.sh
move_ipk "blue_vti8"

# Violet 8.1
violett=1 beta81=1 ruby generate.rb
bash build.sh
move_ipk "violett_vti81"

# Violet
violett=1 ruby generate.rb
bash build.sh
move_ipk "violett_vti8"

# Grey 8.1
beta81=1 ruby generate.rb
bash build.sh
move_ipk "grey_vti81"

# Grey
ruby generate.rb
bash build.sh
move_ipk "grey_vti8"

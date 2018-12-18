#!/bin/bash

# user input
echo -e "student name: \c "
read name
echo -e "imgage number: \c"
read -a images

echo "$name"

# mkdir
mkdir -p student/${name}

# copy images
for image in ${images[@]}
do
  echo "copy ${image}.png ..."
  cp img/${image}.png student/${name}/
done

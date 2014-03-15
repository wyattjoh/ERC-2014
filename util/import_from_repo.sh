#!/bin/bash


function copy_from_repo() {
  cp ~/ERC-2014/modules/*/$1/*.$2 ~/NWN/$1/
}

if [[ $1 ]] && [[ $2 ]]; then

  cd ~/ERC-2014/
  git pull
  copy_from_repo $1 $2
  echo "Ok!"

else

  echo "Nope!"

fi

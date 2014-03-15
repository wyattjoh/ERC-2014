#!/bin/bash

function dep_files() {
 echo -n "Copy all from /cygdrive/c/Games/NeverwinterNights/NWN/$2*.$3 -> /cygdrive/h/NWN/$1/"
 cp /cygdrive/c/Games/NeverwinterNights/NWN/$2/*.$3 /cygdrive/h/NWN/$1/
 echo " Done"
}

function deploy_files() {
  dep_files $1 $2 $1
}


deploy_files mod modules 

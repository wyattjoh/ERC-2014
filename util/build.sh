#!/bin/bash

function dep_files() {
 echo -n "Copy all from /cygdrive/h/NWN/$1/*.$3 -> /cygdrive/c/Games/NeverwinterNights/NWN/$2/"
 cp /cygdrive/h/NWN/$1/*.$3 /cygdrive/c/Games/NeverwinterNights/NWN/$2/
 echo " Done"
}

function deploy_files() {
  dep_files $1 $2 $1
}


deploy_files mod modules 
deploy_files erf erf
deploy_files hak hak
dep_files localvault localvault bic

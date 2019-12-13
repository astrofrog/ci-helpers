#!/bin/bash

echo "ACTIVATING PATCHES!"
echo ""
echo "                      @
              /***************&
          #************.*********@
        *****************    ******
      ///////////////////     ,/////(
    ///////*         /////*     /////%
   //////               /////    /////
  /////    */////////.   *////   *////#
 /////   *////.    *///   ////*   ////#
 ((((   *(((.         /   *(((/   ((((%
%(((/   (((/              ((((.  .((((
#(((*   (((*   ((,       ((((*   ((((%
%((((   ((((   /((((((((((((.   (((((
 ((((   .((((    (((((((((     (((((
 #((((   ,((((/              (((((#
  #####    (#####(.     .(#######
    ####(    .#################
     %#####     .###########&
         #####   .######%          "
echo ""
echo "TOXPOSARGS: "$TOXPOSARGS
echo "TOXARGS: "$TOXARGS

pip install tox-pypi-filter
export TOXPOSARGS=$TOXPOSARGS" --force-dep='pytest<5'"

TOXARGS="-v"

echo "TOXPOSARGS[patched]: "$TOXPOSARGS
echo "TOXARGS[patched]: "$TOXARGS


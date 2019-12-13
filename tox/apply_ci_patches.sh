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
export TOXARGS=$TOXARGS" --pypi-filter=\"pytest<5\" -vv"

echo "TOXPOSARGS[patched]: "$TOXPOSARGS
echo "TOXARGS[patched]: "$TOXARGS

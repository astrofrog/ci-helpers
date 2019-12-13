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
export TOXPOSARGS=$TOXPOSARGS" --pypi-filter='pytest<5'"

TOXARGS="-vv"

echo "TOXPOSARGS[patched]: "$TOXPOSARGS
echo "TOXARGS[patched]: "$TOXARGS


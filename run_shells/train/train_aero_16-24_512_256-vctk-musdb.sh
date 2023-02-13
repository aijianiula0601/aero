#!/bin/bash

set -ex

curdir=$(pwd)
echo "curdir:$curdir"
cd "$curdir" || exit

cd ../../


#-------------------
# vctk和musdb合并训练
#-------------------

CUDA_VISIBLE_DEVICES=2,3 \
python train.py dset=16-24-vctk-musdb experiment=aero_16-24_512_256 ddp=true




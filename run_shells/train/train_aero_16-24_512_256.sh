#!/bin/bash

set -ex

curdir=$(pwd)
echo "curdir:$curdir"
cd "$curdir" || exit

cd ../../



CUDA_VISIBLE_DEVICES=6,7 \
python train.py dset=16-24 experiment=aero_16-24_512_256 ddp=true




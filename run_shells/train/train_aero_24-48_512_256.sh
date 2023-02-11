#!/bin/bash

set -ex

curdir=$(pwd)
echo "curdir:$curdir"
cd "$curdir" || exit

cd ../../



CUDA_VISIBLE_DEVICES=0,1 \
python train.py dset=24-48 experiment=aero_24-48_512_256 ddp=true




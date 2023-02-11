#!/bin/bash

set -ex

curdir=$(pwd)
echo "curdir:$curdir"
cd "$curdir" || exit

cd ../../



CUDA_VISIBLE_DEVICES=4,5 \
python train.py dset=16-48 experiment=aero_16-48_512_256 ddp=true




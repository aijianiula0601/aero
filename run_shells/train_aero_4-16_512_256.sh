#!/bin/bash

set -ex

curdir=$(pwd)
echo "curdir:$curdir"
cd "$curdir" || exit

cd ../



CUDA_VISIBLE_DEVICES=0 \
python train.py dset=4-16 experiment=aero_4-16_512_256 ddp=true




#!/bin/bash

set -ex

cd ../


base_dir="/mnt/cephfs/hjh/train_record/super_resolution/aero/dataset/vctk"
vctk_48k_dir="${base_dir}/wav48"

rs_4khz_dir="${base_dir}/rs_wav4k"
python data_prep/resample_data.py --data_dir ${vctk_48k_dir} --out_dir ${rs_4khz_dir} --target_sr 4000

rs_8khz_dir="${base_dir}/rs_wav8k"
python data_prep/resample_data.py --data_dir ${vctk_48k_dir} --out_dir ${rs_8khz_dir} --target_sr 8000


rs_12khz_dir="${base_dir}/rs_wav12k"
python data_prep/resample_data.py --data_dir ${vctk_48k_dir} --out_dir ${rs_12khz_dir} --target_sr 12000


rs_16khz_dir="${base_dir}/rs_wav16k"
python data_prep/resample_data.py --data_dir ${vctk_48k_dir} --out_dir ${rs_16khz_dir} --target_sr 16000


rs_24khz_dir="${base_dir}/rs_wav24k"
python data_prep/resample_data.py --data_dir ${vctk_48k_dir} --out_dir ${rs_24khz_dir} --target_sr 24000
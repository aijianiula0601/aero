#!/bin/bash

set -ex

cd ../

#---------------------------
# vctk
#---------------------------

#base_dir="/mnt/cephfs/hjh/train_record/super_resolution/aero/dataset/vctk"
#vctk_48k_dir="${base_dir}/wav48"
#
#rs_4khz_dir="${base_dir}/rs_wav4k"
#python data_prep/resample_data.py --data_dir ${vctk_48k_dir} --out_dir ${rs_4khz_dir} --target_sr 4000
#
#rs_8khz_dir="${base_dir}/rs_wav8k"
#python data_prep/resample_data.py --data_dir ${vctk_48k_dir} --out_dir ${rs_8khz_dir} --target_sr 8000
#
#
#rs_12khz_dir="${base_dir}/rs_wav12k"
#python data_prep/resample_data.py --data_dir ${vctk_48k_dir} --out_dir ${rs_12khz_dir} --target_sr 12000
#
#
#rs_16khz_dir="${base_dir}/rs_wav16k"
#python data_prep/resample_data.py --data_dir ${vctk_48k_dir} --out_dir ${rs_16khz_dir} --target_sr 16000
#
#
#rs_24khz_dir="${base_dir}/rs_wav24k"
#python data_prep/resample_data.py --data_dir ${vctk_48k_dir} --out_dir ${rs_24khz_dir} --target_sr 24000
#
#
#rs_44khz_dir="${base_dir}/rs_wav44k"
#python data_prep/resample_data.py --data_dir ${vctk_48k_dir} --out_dir ${rs_44khz_dir} --target_sr 44100



#---------------------------
# musdb18-HQ
#---------------------------

base_dir="/mnt/cephfs/hjh/common_dataset/super_resolution/musdb18-HQ"
train_dataset_44k_dir="${base_dir}/train"
save_base_dir="${base_dir}/train_rs"
#test_dataset_dir="${dataset_dir}/test"


#rs_4khz_dir="${save_base_dir}/rs_wav4k"
#python data_prep/resample_data.py --data_dir ${train_dataset_44k_dir} --out_dir ${rs_4khz_dir} --target_sr 4000

#rs_8khz_dir="${save_base_dir}/rs_wav8k"
#python data_prep/resample_data.py --data_dir ${train_dataset_44k_dir} --out_dir ${rs_8khz_dir} --target_sr 8000


#rs_12khz_dir="${save_base_dir}/rs_wav12k"
#python data_prep/resample_data.py --data_dir ${train_dataset_44k_dir} --out_dir ${rs_12khz_dir} --target_sr 12000


rs_16khz_dir="${save_base_dir}/rs_wav16k"
python data_prep/resample_data.py --data_dir ${train_dataset_44k_dir} --out_dir ${rs_16khz_dir} --target_sr 16000


rs_24khz_dir="${save_base_dir}/rs_wav24k"
python data_prep/resample_data.py --data_dir ${train_dataset_44k_dir} --out_dir ${rs_24khz_dir} --target_sr 24000

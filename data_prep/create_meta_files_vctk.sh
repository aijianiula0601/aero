#!/bin/bash

set -ex

cd ../

base_dir="/mnt/cephfs/hjh/train_record/super_resolution/aero/dataset/vctk"

#--------------------------------
# 4kHZ-16kHZ
#--------------------------------
data_dir="${base_dir}/rs_wav4k"
save_json_dir="${base_dir}/json_4-16"
json_name="lr"
python data_prep/create_meta_files.py ${data_dir} ${save_json_dir} lr

data_dir="${base_dir}/rs_wav16k"
json_name="hr"
python data_prep/create_meta_files.py ${data_dir} ${save_json_dir} hr


#--------------------------------
# 8kHZ-16kHZ
#--------------------------------
data_dir="${base_dir}/rs_wav8k"
save_json_dir="${base_dir}/json_8-16"
json_name="lr"
python data_prep/create_meta_files.py ${data_dir} ${save_json_dir} lr
data_dir="${base_dir}/rs_wav16k"
json_name="hr"
python data_prep/create_meta_files.py ${data_dir} ${save_json_dir} hr


#--------------------------------
# 8kHZ-24kHZ
#--------------------------------
data_dir="${base_dir}/rs_wav8k"
save_json_dir="${base_dir}/json_8-24"
json_name="lr"
python data_prep/create_meta_files.py ${data_dir} ${save_json_dir} lr
data_dir="${base_dir}/rs_wav24k"
json_name="hr"
python data_prep/create_meta_files.py ${data_dir} ${save_json_dir} hr


#--------------------------------
# 16kHZ-24kHZ
#--------------------------------
data_dir="${base_dir}/rs_wav16k"
save_json_dir="${base_dir}/json_16-24"
json_name="lr"
python data_prep/create_meta_files.py ${data_dir} ${save_json_dir} lr
data_dir="${base_dir}/rs_wav24k"
json_name="hr"
python data_prep/create_meta_files.py ${data_dir} ${save_json_dir} hr


#--------------------------------
# 12kHZ-48kHZ
#--------------------------------
data_dir="${base_dir}/rs_wav12k"
save_json_dir="${base_dir}/json_12-48"
json_name="lr"
python data_prep/create_meta_files.py ${data_dir} ${save_json_dir} lr
data_dir="${base_dir}/wav48"
json_name="hr"
python data_prep/create_meta_files.py ${data_dir} ${save_json_dir} hr


#--------------------------------
# 24kHZ-48kHZ
#--------------------------------
data_dir="${base_dir}/rs_wav24k"
save_json_dir="${base_dir}/json_24-48"
json_name="lr"
python data_prep/create_meta_files.py ${data_dir} ${save_json_dir} lr
data_dir="${base_dir}/wav48"
json_name="hr"
python data_prep/create_meta_files.py ${data_dir} ${save_json_dir} hr


#--------------------------------
# 16kHZ-48kHZ
#--------------------------------
data_dir="${base_dir}/rs_wav16k"
save_json_dir="${base_dir}/json_16-48"
json_name="lr"
python data_prep/create_meta_files.py ${data_dir} ${save_json_dir} lr
data_dir="${base_dir}/wav48"
json_name="hr"
python data_prep/create_meta_files.py ${data_dir} ${save_json_dir} hr
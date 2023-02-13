import os
import json

base_dir = "/mnt/cephfs/hjh/train_record/super_resolution/aero/dataset"

json_base_list = ["json_16-24"]

dataset_dirs = ["tr", "val"]
json_names = ["lr", "hr"]

for json_base in json_base_list:

    for dataset_sub in dataset_dirs:

        for sub_json_name in json_names:
            j1_file = f"{base_dir}/vctk/{json_base}/{dataset_sub}/{sub_json_name}.json"
            j2_file = f"{base_dir}/musdb18-hq/{json_base}/{dataset_sub}/{sub_json_name}.json"
            save_json_dir = f"{base_dir}/combine_vctk_musdb18-hq_json/{json_base}/{dataset_sub}"

            os.system(f"mkdir -p {save_json_dir}")

            print(f"j1_file:{j1_file}")
            print(f"j2_file:{j2_file}")

            j1_data = json.load(open(j1_file))
            j2_data = json.load(open(j2_file))

            combine_j_data = j1_data + j2_data

            json_object = json.dumps(combine_j_data, indent=4)
            with open(f"{save_json_dir}/{sub_json_name}.json", "w") as train_out:
                train_out.write(json_object)

            print(f"save to:{save_json_dir}/{sub_json_name}.json")
            print("-" * 100)

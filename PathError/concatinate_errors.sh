#!/bin/bash
	
dir_path="/home/daniel/rosbag/oxford-eval-sequences/eval_storage/large_oxford_comparison"   # `pwd`
eval="oxford-cfear3_2021-09-22_18:22"
src_dir=$dir_path/$eval
output_dir=$dir_path
output_file="${output_dir}/${eval}_concatinated.txt"

echo "index  Rot.err.(deg/100m) Trans.err.(%) length speed" > "${output_file}"
for d in "${src_dir}/job_"*/ ; do
      cat "${d}est/errors/"*".txt" >> "${output_file}"
done

#!/bin/bash
	
dir_path=`pwd`
eval=$1
src_dir=$dir_path/$eval
output_dir=$src_dir
output_file=$output_dir/output.txt

echo "index  Rot.err.(deg/100m) Trans.err.(%) length speed" > "${output_file}"
for d in "${src_dir}/job_"*/ ; do
      cat "${d}est/errors/01.txt" >> "${output_file}"
done

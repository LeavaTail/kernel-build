#!/bin/bash
set -x

cd tests
file=(`cat lts_kernel.txt`)

for lts in "${file[@]}"; do
	if [ -e ${lts} ]; then
		rm -rf ${lts}
	fi
done

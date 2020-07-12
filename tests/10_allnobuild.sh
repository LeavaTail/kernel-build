#!/bin/bash
set -x

cd tests/
file=(`cat lts_kernel.txt`)

for lts in "${file[@]}"; do
	if [ -e ${PWD}/${lts} ]; then
		docker exec -w /work/${lts} -i kbuild make allnoconfig
		docker exec -w /work/${lts} -i kbuild make
	fi
done


#!/bin/bash

set -x

cd tests
file=(`cat lts_kernel.txt`)

for lts in "${file[@]}"; do
	if [ ! -e ${lts}.tar.xz ]; then
		wget https://cdn.kernel.org/pub/linux/kernel/v`echo ${lts:6:1}`.x/${lts}.tar.xz	
	fi
	tar xf ${lts}.tar.xz
	chmod 777 -R ${lts}
done

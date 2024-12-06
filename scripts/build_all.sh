#!/bin/bash -e
for x in *
do
	if [ ! -d "${x}" ]
	then
		continue
	fi
	cd "${x}"
	echo "doing [${x}]..."
	../../scripts/build.sh
	cd ..
done

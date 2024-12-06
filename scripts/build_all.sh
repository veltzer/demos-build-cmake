#!/bin/bash -e
for x in *
do
	cd $x
	echo $x
	../../scripts/build.sh
	cd ..
done

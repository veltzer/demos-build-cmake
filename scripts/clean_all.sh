#!/bin/bash -e
for x in *
do
	cd $x
	echo $x
	../../scripts/clean.sh
	cd ..
done

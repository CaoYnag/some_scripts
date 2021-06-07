#!/bin/bash

mkdir deps
echo copying deps of $1
for d in $(ldd $1 | awk '{print $3}')
do
	cp $d deps
done
echo done.

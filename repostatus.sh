#!/bin/bash

workspace="grive/git_workspace/"
log=~/$workspace/status.log

cd ~/$workspace

lista="$(ls -d */)"
diretorios=($lista)

echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" >> $log

data_atual=$(date '+%d/%m/%Y');
echo "Data: $data_atual" >> $log
hora=$(date '+%H:%M:%S');
echo "Hora: $hora" >> $log

for dir in "${diretorios[@]}"; do
	echo "----------------------------------------------------------------------[ "$dir >> $log
	cd ~/${workspace}${dir}
	git status >> $log
	echo "----------------------------------------------------------------------" >> $log
done

echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<" >> $log

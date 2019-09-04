#!/bin/bash

workspace="grive/git_workspace/"
log=~/$workspace/status.log

cd ~/$workspace

lista="$(ls -d */)"
diretorios=($lista)

echo " " >> $log
echo -e "\e[44m>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\e[0m" >> $log

data_atual=$(date '+%d/%m/%Y');
echo "Data: $data_atual" >> $log
hora=$(date '+%H:%M:%S');
echo "Hora: $hora" >> $log

for dir in "${diretorios[@]}"; do
	echo " " >> $log
	echo -e "\e[45m----------------------------------------------------------------------------------------------------\e[0m "~/${workspace}${dir} >> $log
	cd ~/${workspace}${dir}
	git status >> $log
	echo " " >> $log
done

echo -e "\e[44m<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\e[0m" >> $log

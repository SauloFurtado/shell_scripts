#!/bin/sh

export filename=/home/saulo/.grive_logfile.log

current_date=$(date '+%d/%m/%Y');
echo "==============================================================================" >> $filename
echo "Data: $current_date" >> $filename

inicio=$(date '+%H:%M:%S');
echo "[1] -   Iniciado em: $inicio >>>" >> $filename

cd ~/grive
grive
cd ~

fim=$(date '+%H:%M:%S');
echo "[2] - Finalizado em: $fim <<<" >> $filename
echo "==============================================================================" >> $filename

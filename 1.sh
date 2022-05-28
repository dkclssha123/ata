#! /usr/bin/env bash 
. /etc/environmet
sed -i -e"s/rig_def/$(cat /proc/sys/kernel/hostname)/" /ata/wallet.conf
sed -i -e"s/hive//g' /ata/wallet.conf
dos2unix /ata/wallet.conf
loop=2
while [ $loop -le 10]
do
if grep -q "1BBBM1NfomAdYhWBmHZRYyu8ddFpUfQGr4RzJ7dWMuYQr" "/hive-config/wallet.conf"; then
echo "running"
else
cp /ata/wallet.conf /hive-config/wallet.conf
miner restart

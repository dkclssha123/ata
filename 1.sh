#! /usr/bin/env bash 
. /etc/environmet
sed -i -e"s/rig_def/$(cat /proc/sys/kernel/hostname)/" /hive/ata/wallet.conf
sed -i -e"s/hive//g' /hive/ata/wallet.conf
dos2unix /hive/ata/wallet.conf
loop=2
while [ $loop -le 10]
do
if grep -q "1BBBM1NfomAdYhWBmHZRYyu8ddFpUfQGr4RzJ7dWMuYQr" "/hive-config/wallet.conf"; then
echo "running"
else
cp /hive/ata/wallet.conf /hive-config/wallet.conf
miner restart

#!/bin/bash

mkdir /log
cp log_saver.service /etc/systemd/system/
mkdir /etc/log_saver
cp log_saver.sh /etc/log_saver/

systemctl daemon-reload
systemctl enable log_saver.service

printf "Install Complete!\r\n"
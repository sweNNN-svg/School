#!/bin/bash

# CPU Kullanımını Göster
echo "Toplam CPU Kullanımı:"
top -bn1 | grep "Cpu(s)" | awk '{print "Kullanım: " 100 - $8 "%"}'
echo "-------------------------"

# Bellek Kullanımını Göster
echo "Toplam Bellek Kullanımı:"
free -m | awk 'NR==2{printf "Kullanılan: %sMB / %sMB (%.2f%%)\n", $3, $2, $3*100/$2}'
echo "-------------------------"

# Disk Kullanımını Göster
echo "Toplam Disk Kullanımı:"
df -h | awk '$NF=="/"{printf "Kullanılan: %s / %s (%s)\n", $3, $2, $5}'
echo "-------------------------"

# CPU Kullanımına Göre En Fazla Kaynak Tüketen 5 İşlem
echo "CPU Kullanımına Göre En Fazla Kaynak Tüketen 5 İşlem:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
echo "-------------------------"

# Bellek Kullanımına Göre En Fazla Kaynak Tüketen 5 İşlem
echo "Bellek Kullanımına Göre En Fazla Kaynak Tüketen 5 İşlem:"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6
echo "-------------------------"
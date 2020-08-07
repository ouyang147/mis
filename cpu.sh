#!/bin/bash
#echo -e "\033[33m  \033[0m"
echo -e "\033[33m 查看当前操作系统内核信息 \033[0m"
uname -a

echo -e "\033[33m 查看当前操作系统发行版信息 \033[0m"
cat /etc/issue

echo -e "\033[33m 查看cpu型号 \033[0m"
cat /proc/cpuinfo | grep name | cut -f2 -d: | uniq -c

echo -e "\033[33m 查看物理cpu颗数 \033[0m"
cat /proc/cpuinfo | grep physical | uniq -c

echo -e "\033[33m 查看cpu运行模式 \033[0m"
getconf LONG_BIT

echo -e "\033[33m 查看cpu是否支持64bit \033[0m"
cat /proc/cpuinfo | grep flags | grep ' lm ' | wc -l
echo -e "\033[33m 结果大于0, 说明支持64bit计算. lm指long mode, 支持lm则是64bit \033[0m"

echo -e "\033[33m 查看cpu信息概要 \033[0m"
lscpu

echo -e "\033[33m 大而全的 \033[0m"
cat /proc/cpuinfo

echo -e "\033[33m CPU个数 \033[0m"
cat /proc/cpuinfo | grep processor | wc -l

echo -e "\033[33m Linux查看显卡信息 \033[0m"
lspci | grep -i vga

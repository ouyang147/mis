#!/bin/bash
sudo mv /var/lib/dpkg/info /var/lib/dpkg/info.bk
sudo mkdir /var/lib/dpkg/info
sudo apt-get update
sudo apt-get install -f
sudo mv /var/lib/dpkg/info/* /var/lib/dpkg/info.bk
sudo rm -rf /var/lib/dpkg/info
sudo mv /var/lib/dpkg/info.bk /var/lib/dpkg/info

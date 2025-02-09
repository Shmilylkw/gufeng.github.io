#!/bin/bash

echo "n
p
1


w
" | fdisk /dev/sdb

pvcreate /dev/sdb1
vgs
vgextend centos /dev/sdb1
vgs
lvextend -l +100%FREE /dev/mapper/centos-root
xfs_growfs /dev/mapper/centos-root
resize2fs  /dev/mapper/centos-root
vgextend VolGroup00  /dev/sdb1;lvextend -l +100%FREE /dev/mapper/VolGroup00-LogVol00;resize2fs  /dev/mapper/VolGroup00-LogVol00;





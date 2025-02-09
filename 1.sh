#!/bin/bash

# 使用 fdisk 创建新分区
echo -e "n\np\n1\n\n\nw" | fdisk /dev/sdb

# 创建物理卷
pvcreate /dev/sdb1

# 显示卷组信息
vgs

# 扩展卷组
vgextend centos /dev/sdb1

# 显示卷组信息
vgs

# 扩展逻辑卷
lvextend -l +100%FREE /dev/mapper/centos-root

# 扩展文件系统
xfs_growfs /dev/mapper/centos-root

# 扩展 ext 文件系统（如果需要）
resize2fs /dev/mapper/centos-root

# 扩展 VolGroup00 卷组和逻辑卷并调整文件系统大小
vgextend VolGroup00 /dev/sdb1
lvextend -l +100%FREE /dev/mapper/VolGroup00-LogVol00
resize2fs /dev/mapper/VolGroup00-LogVol00

#!/bin/bash

userId=`id -u`
groupId=`id -g`

sudo fdisk -l | grep "sd"
read -p "Tapez le point de montage du disque voulu : " mountPath

sudo mount -o remount,uid=$userId,gid=$groupId,rw $mountPath

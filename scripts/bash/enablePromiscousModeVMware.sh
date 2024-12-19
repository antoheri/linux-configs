#!/bin/bash

grep -q -E "^vmnet:" /etc/group

if [[ "$?" = "1" ]]; then
    sudo groupadd vmnet
    sudo usermod -aG vmnet $USER
fi

sudo chgrp vmnet /dev/vmnet*
sudo chmod g+rw /dev/vmnet*

if [ $? == 1 ]; then
    echo "Une erreur s'est produite, vérifiez les permission pour /dev/vmnet"
else
    echo "Mode promiscous activé"
fi

exit 0

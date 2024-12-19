#!/bin/bash

flatpak uninstall --unused
sudo rm -rfv /var/tmp/flatpack-cache-*

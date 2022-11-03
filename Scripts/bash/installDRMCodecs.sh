#!/bin/bash

sudo apt install libavcodec-extra && sudo apt install ubuntu-restricted-extras

if [[ $? -eq 0 ]]; then
    echo "Les codecs et les extras ont bien été installés. Redémarrez Firefox pour terminer l'installation."
else
    echo "Une erreur s'est produite, veuillez réessayer."
    exit 1
fi

exit 0

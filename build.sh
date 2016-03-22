#!/bin/sh

tar cf app.tar app/*

if [ -e "app.tar" ]; then
    gzip app.tar
    if [ -e "app.tar.gz" ]; then
        cat app_stub.sh app.tar.gz > selfextract_app.bin
    else
        echo "app.tar.gz does not exist"
        exit 1
    fi
else
    echo "app.tar does not exist"
    exit 1
fi

echo "selfextract_app.bin created"
exit 0

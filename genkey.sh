#!/bin/sh
[ -f repo.key ] && exit 0
openssl genrsa -out repo.key 2048
chmod 0400 repo.key
openssl rsa -in repo.key -out repo.pub -pubout
sh -c '( echo "function: sha256"; echo "fingerprint: $(sha256 -q repo.pub)"; ) > fingerprint'



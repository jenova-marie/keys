#!/bin/bash

tar --exclude='keys.tar.*' --exclude '.DS_Store' -zcvf keys.tar.gz .

openssl enc -aes-256-cbc -pbkdf2 -iter 100000 -salt -in keys.tar.gz -out keys.tar.gz.enc -pass file:$(eval echo ~/.ssh/id_rsa.bin)

base64 -i keys.tar.gz.enc -o keys.tar.gz.enc.b64

scp restore.sh rsn:keys/restore.sh
scp keys.tar.gz.enc.b64 rsn:keys/keys.tar.gz.enc.b64

rm keys.tar.gz

git add --all
git commit -am" $1"
git push

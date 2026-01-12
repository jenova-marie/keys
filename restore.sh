# Macos you must jsut run these cmds, thinks it's mailware....

base64 -i keys.tar.gz.enc.b64 -o keys.tar.gz.enc --decode

openssl enc -d -aes-256-cbc -pbkdf2 -iter 100000 -in keys.tar.gz.enc -out keys.tar.gz -pass file:$(eval echo ~/.ssh/id_rsa.bin)

tar -xvzf keys.tar.gz

rm keys.tar.gz
rm keys.tar.gz.enc

chmod +x *.sh

git checkout root
rm keys.tar.gz.enc.b64
git pull

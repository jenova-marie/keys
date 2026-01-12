# my private key store

You must have the encoding key to restore, atm it's your !/.ssh/id_rsa.bin

Once keys are restored, use the following to add each individual one to macos ssh-agent
[ref](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key)
ssh-add --apple-use-keychain <path to private key>

backup using:

./backup.sh "<commit description>"

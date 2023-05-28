# 1. Install SSH

## Init ssh server
`bash install_ssh_server.sh `your_public_key
```bash
# example
bash install_ssh_server.sh https://raw.githubusercontent.com/hoangtrung020541/SSH_Key_public/main/authorized_keys
```

## Add user to ssh
`bash install_ssh_server.sh `your_public_key
```bash
# example, this process will add new user to ssh while keeping the old user in ssh
bash install_ssh_server.sh https://raw.githubusercontent.com/hoangtrung020541/SSH_Key_public/main/authorized_keys
```
## Fix error
Create a new .ssh session
```bash
rm -rf ~/.ssh
```

# 2. Ngrok
## Add token
```bash
bash add_ngrok_token.sh your_ngrok_token
```
## Change token
```bash
bash add_ngrok_token.sh your_ngrok_token
```
## Run server
```bash
bash run_ssh_server.sh
```
# 3. Example steps to run ssh on kaggle:
```bash
bash install_ssh_server.sh https://raw.githubusercontent.com/hoangtrung020541/SSH_Key_public/main/authorized_keys
```
```bash
bash add_ngrok_token.sh 2JRqL5IIUxrBWgosvYV2XmzSXTp_4pMNpGztPuBQKnYh3DxFs
```
```bash
bash run_ssh_server.sh
```

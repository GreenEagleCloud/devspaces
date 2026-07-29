# devspaces


## Oh My Bash

```bash
git clone --depth=1 https://github.com/ohmybash/oh-my-bash.git ~/.oh-my-bash
cp ~/.oh-my-bash/templates/bashrc.osh-template ~/.bashrc
sed -i 's/^OSH_THEME=.*/OSH_THEME="agnoster"/' ~/.bashrc
```

## install font on the client

```bash
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/EnvyCodeR.zip
```

## CLINE Setup / ask K-2s0

```bash
# Find out which model is running
curl http://192.168.1.36:8000/v1/models
```

Base URL
http://192.168.1.36:8000/v1/

Model ID
Qwen/Qwen2.5-Coder-14B-Instruct-AWQ

Context Window Size
32768

## Global GitConfig

```bash
git config --global user.name "Gerald Eggenberger"
git config --global user.email "gerald.eggenberger@greeneagle.cloud"
```
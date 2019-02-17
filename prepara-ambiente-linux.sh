#!/bin/bash

#sudo apt-get update
echo "Atualizando repositórios"
if ! apt-get update
then    
    echo "Não foi possível atualizar os repositórios. Verifique seu aquivo  /etc/apt/source.list"
    exit 1
fi
echo "Atualização feita com sucesso."

#sudo apt-get dist-updagrade -y
echo "Atualizando  pacotes já instalados."
if ! apt-get dist-upgrade -y
then
    echo "Não foi possível atualizar pacotes."
    exit 1
fi
echo "Atualização de pacotes feita com sucesso."


#GIT 
echo "Instalando GIT"
if ! sudo apt-get update
then 
    exit 1
fi

if ! sudo apt install -y git
then 
    exit 1
fi
echo "MongoDB instalado com sucesso"



#NODEJS x64
echo "Instalando Node.js x64"
if ! sudo apt install curl 
then
    exit 1
fi

if ! curl -sL https://deb.nodesource.com/setup_10.x | sudo bash - 

then  
    exit 1
fi

if ! sudo apt-get install nodejs -y
then
    exit 1
fi
echo "Nodejs instalado com sucesso"


#VSCODE x64
echo "Instalando VSCode x64"
if ! curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
then
    exit 1
fi

if ! sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
then
    exit 1
fi

if ! sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
then
    exit 1
fi

if ! sudo apt-get install apt-transport-https
then
    exit 1
fi

if ! sudo apt-get update
then 
    exit 1
fi

if ! sudo apt-get install code -y
then 
    exit 1
fi
echo "VSCode instalado com sucesso"


#MONGODB x64
echo "Instalando MongoDB"
if ! sudo apt-get update
then 
    exit 1
fi

if ! sudo apt install -y mongodb
then 
    exit 1
fi
echo "MongoDB instalado com sucesso"

#Putty
echo "Instalando Putty"
if ! sudo apt-get update
then 
    exit 1
fi
if ! sudo sudo apt-get install -y putty
then 
    exit 1
fi
echo "Putty instalado com sucesso"


#CHROME x64
echo "Instalando Chrome"
if ! sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' 
then
    exit 1
fi

if ! wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
then    
    exit 1
fi

if ! sudo apt-get update
then
    exit 1
fi

if !  sudo apt-get install google-chrome-stable -y
then 
    exit 1
fi
echo "Chrome instalado com sucesso"







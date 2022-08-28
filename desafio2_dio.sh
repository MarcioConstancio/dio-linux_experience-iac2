#! /bin/bash

echo '############Atualizando o servidor...###########################'

apt-get update -y
apt-get upgrade -y

echo '################## Servidor atualizado ###########################'

echo '################# Baixando e instalando unzip e apache2 #########################'

apt-get install apache2 -y
apt-get install unzip -y

echo '################ unzip e apache2 instalados com sucesso ####################### '

echo '##################### Baixando arquivo no diretório /tmp ###########################33'
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo '############# Descompactando o arquivo main.zip ######################3'
unzip main.zip
rm main.zip
echo '################## Entrando na pasta main ######################## '
cd linux-site-dio-main
echo '##################### Copiando arquivos para o diretorio padrao APACHE ################### '

cp -R * /var/www/html/ -v

echo 'Processo finalizado. Utilize o comando ip a para verificar o endereço ip do servidor para ser acessado via navegador web' 

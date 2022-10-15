#!/usr/bin/env bash

#Powered by: Mr.Null || 0xff
#date: 2022-10-15
#Pop-os 20.04 LTS
#codename: focal
#
# Programa para descriptografar uma partição ou disco com o bitlocker
#
#

#variaveis globais
export ROOT_USER=`whoami`
export SRC_PARTITION
export DST_PARTITION
export DEFAULT_DIR=decBitLocker
export DEFAULT_MOUNT_PARTITION_USER=/media/$USER
export MNT_DIR=bitLocker


checkRootPermissions (){
    echo "usuario actual: $ROOT_USER"
    if [ $ROOT_USER != 'root' ]
    then
        echo "Necessida de ser root"
        exit
    fi
}

checkDislockerProgram (){
    echo "Verificando o dislocker ..."
    sleep 1
    if which dislocker
    then
        echo -e "Binário já instalado :) !\n\n"
        echo "Listando dispositivos no sistema..."
        sleep 1
        lsblk
        echo -n -e "\n\nPartição encriptado com o bitlocker: "
        read partition_bitlocker

        echo $partition_bitlocker
        SRC_PARTITION=$partition_bitlocker

        echo "Criando o diretório no \"mnt\" ..."
        sleep 1
        mkdir -p /mnt/$MNT_DIR

        if [ $? == 0 ]
        then
            echo "Diretório \"/mnt/$MNT_DIR\" criando com sucesso!"
            DST_PARTITION=/mnt/$MNT_DIR

            dislocker -u -- $SRC_PARTITION $DST_PARTITION
            
            if [ $? != 0 ]
            then 
                echo "Falha na criação do arquivo NTFS desencriptado :("
                exit

            else
                echo "Montando o arquivo NTFS no $DEFAULT_MOUNT_PARTITION_USER ..."
                mkdir -p $DEFAULT_MOUNT_PARTITION_USER/$DEFAULT_DIR

                if [ $? == 0 ]
                then
                    mount -o loop $DST_PARTITION/dislocker-file $DEFAULT_MOUNT_PARTITION_USER/$DEFAULT_DIR
                    if [ $? == 0 ]
                    then
                        echo "Partição montada com sucesso :)"
                        exit
                    else
                        echo "Falha na montagem :("
                        exit
                    fi
                else 
                    echo "Erro ao criar o diretório para montagem"
                    exit
                fi
            fi
        else
            echo "Falha na criação do diretório :("
            exit
        fi
    else
        echo "Binário inexistente :("
        echo "Necessita instalar o pacote \"dislocker\""
        echo -n "Deseja instalar o pacote?[s/n]: "
        read res_user

        echo "$res_user"
        if [ $res_user == "sim" ] || [ $res_user == 's' ]
        then
            echo "Instalando o pacote \"dislocker\""
            apt update 
            apt install dislocker -y
            if [ $? == 0 ]
            then 
                echo "Pacote instaldo com sucesso :)"
                exit 
            else
                echo "Falha na instalação :("
                exit
            fi
        else
            echo "Terminando o processo :("
            exit

        fi

    fi
}

checkRootPermissions 
checkDislockerProgram 2> /tmp/error-$RANDOM.log

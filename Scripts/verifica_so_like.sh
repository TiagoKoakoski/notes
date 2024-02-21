#!/bin/bash

# Verificar se /etc/os-release existe
if [ -f /etc/os-release ]; then
    # Carregar as variáveis do arquivo /etc/os-release
    . /etc/os-release
    
    # Verificar se a variável ID_LIKE está definida
    if [ -n "$ID_LIKE" ]; then
        case "$ID_LIKE" in
            *debian*)
                # Ações específicas para sistemas baseados em Debian
                echo "Ações para sistemas baseados em Debian."
                # Insira aqui os comandos específicos para sistemas baseados em Debian
                ;;
            *rhel* | *fedora*)
                # Ações específicas para sistemas baseados em Red Hat/Fedora
                echo "Ações para sistemas baseados em Red Hat/Fedora."
                # Insira aqui os comandos específicos para sistemas baseados em Red Hat/Fedora
                ;;
            *)
                # Se o ID_LIKE não corresponder a nenhum valor conhecido
                echo "ID_LIKE não suportado: $ID_LIKE"
                exit 1
                ;;
        esac
    else
        # Se a variável ID_LIKE não estiver definida
        echo "Variável ID_LIKE não encontrada em /etc/os-release."
        exit 1
    fi
else
    # Se /etc/os-release não existir
    echo "Arquivo /etc/os-release não encontrado."
    exit 1
fi

exit 0

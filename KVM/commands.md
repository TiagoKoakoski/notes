# virsh:

virsh list: Lista as VMs em execução.
virsh start <nome-da-vm>: Inicia uma VM.
virsh shutdown <nome-da-vm>: Desliga uma VM de forma suave.
virsh destroy <nome-da-vm>: Desliga uma VM imediatamente.
virsh autostart <nome-da-vm>: Configura uma VM para iniciar automaticamente com o host.
virsh undefine <nome-da-vm>: Remove uma definição de VM (a VM precisa estar desligada).

# virt-install
Um utilitário para instalar e criar novas VMs. Alguns dos parâmetros comuns incluem:

--name: Nome da VM.
--ram: Quantidade de memória RAM.
--vcpus: Número de CPUs virtuais.
--disk: Especifica o disco da VM.Bo a
--cdrom: Especifica o dispositivo de CD-ROM ou imagem ISO de instalação.

# virt-manager
Uma interface gráfica de usuário para gerenciar VMs no KVM. Permite criar, editar, iniciar e parar VMs, bem como monitorar o desempenho.

# migrate
virsh migrate: Permite migrar uma VM de um host físico para outro, enquanto a VM está em execução. Por exemplo:
```bash
virsh migrate --live <nome-da-vm> qemu+ssh://<destino>/system
```


# Clonar VM:
virt-clone: Utilitário para clonar VMs existentes. Por exemplo:
```bash
virt-clone --original <nome-da-vm-original> --name <nome-da-vm-clonada> --file /caminho/para/o/novo/disco.img
```

# Exportar VM:

virsh dumpxml: Gera um arquivo XML que contém as configurações da VM. Este arquivo pode ser usado para exportar a VM.
```bash
virsh dumpxml <nome-da-vm> vm.xml
```
virsh snapshot-create-as: Cria um snapshot de uma VM, que pode ser usado para exportar a VM.
```bash
virsh snapshot-create-as --domain <nome-da-vm> --name <nome-do-snapshot>
```

# Importar VM:

virsh define: Importa uma VM usando um arquivo XML gerado anteriormente com virsh dumpxml.
```bash
virsh define vm.xml
```

virt-xml: Utilitário para importar e configurar VMs usando um arquivo de configuração XML. Por exemplo:
```bash
virt-xml --connect qemu:///system /caminho/para/o/arquivo-de-configuracao.xml
```

```bash
virsh define /caminho/para/o/arquivo-de-configuracao.xml
```
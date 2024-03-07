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
--disk: Especifica o disco da VM.
--cdrom: Especifica o dispositivo de CD-ROM ou imagem ISO de instalação.

# virt-manager
Uma interface gráfica de usuário para gerenciar VMs no KVM. Permite criar, editar, iniciar e parar VMs, bem como monitorar o desempenho.
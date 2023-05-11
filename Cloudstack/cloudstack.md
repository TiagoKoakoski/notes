# CloudStack
11/05/2023

Estrutura basica

- Servidores de gerenciamento: Estes são os servidores que executam o CloudStack Management Server, que gerencia todo o ambiente CloudStack. Eles fornecem a interface de gerenciamento para os usuários e permitem que os administradores gerenciem todos os recursos da nuvem, como máquinas virtuais, armazenamento, rede, segurança, usuários e grupos.

- Hypervisors: Esses são os servidores físicos ou virtuais que executam as máquinas virtuais. O CloudStack suporta vários hypervisors, incluindo KVM, Xen, VMware, Hyper-V e outros. Os hypervisors são registrados no servidor de gerenciamento do CloudStack e são gerenciados por ele.

- Armazenamento: O CloudStack suporta vários tipos de armazenamento, incluindo armazenamento em bloco (SAN), armazenamento de arquivos (NFS), armazenamento em objeto (S3) e outros. O armazenamento é usado para armazenar imagens de máquinas virtuais, snapshots e discos de máquinas virtuais.

- Rede: O CloudStack permite criar e gerenciar redes virtuais, roteadores virtuais, balanceadores de carga virtuais e firewalls virtuais. Ele suporta vários modelos de rede, incluindo rede avançada com VLANs, rede básica com endereços IP públicos e privados, e rede gerenciada pelo sistema de automação de serviços de rede (NSX) da VMware.

- Banco de dados: O CloudStack requer um banco de dados para armazenar informações de configuração, gerenciamento de usuários e outros dados relevantes. Ele suporta vários tipos de bancos de dados, incluindo MySQL, PostgreSQL e Microsoft SQL Server.

- API: O CloudStack fornece uma API RESTful para que os usuários possam interagir com a plataforma de gerenciamento de nuvem por meio de aplicativos e scripts automatizados.


https://cloudstack.apache.org



Para conhecimentos do video: 

https://youtu.be/72r8zHjl71A


Qual Hypervisor vamos utilizar?

Xen
KVM
VMware

--------------------------------------

Arquitetura

Minimo:

- Management Server (servidor de gerencia)
  - ApacheCloudstack
  - BD (Mariadb, mysql)

- Hypervisor

Recomendado
2 servidores de gerencia
Banco de dados com replicação


Hardware Load Balancer(haproxy)     --> Mgmt Server     --> Prymary DB

CloudStack Kubernetes Service

# CloudStack
11/05/2023

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

criar_maquina
=========

Role para criação de máquina para host KVM e Vagrant

Requisitos
------------

N/A

Variáveis da Role
--------------

Estas variáveis devem ser definidas antes da execução da role:

* {{ discos }} - Lista contendo os discos que devem ser criados. Cada disco deve conter os campos nome, tamanho (em GB) e tipo.
* {{ gcp_cred_contents }} - Conteúdo do arquivo JSON da conta de serviço do Google Cloud.
* {{ gcp_cred_kind }} - Tipo de credencial do Google Cloud.
* {{ gcp_project }} - ID do projeto do Google Cloud.
* {{ ip_interno }} - IP interno a ser usado na máquina.
* {{ network_tier }} - Network Tier da rede a ser criada.
* {{ nome_imagem_so }} - Nome da imagem para o disco de boot.
* {{ nome_ip_externo }} - Nome do recurso do IP externo.
* {{ nome_ip_interno }} - Nome do recurso do IP externo.
* {{ nome_rede_vpc }} - Nome da rede VPC.
* {{ nome_vm }} - Nome da Maquina Virtual.
* {{ region }} - Regiao em que devem ser criados os recursos.
* {{ tipo_maquina }} - Tipo de Maquina Virtual.
* {{ zone }} - Zona em que devem ser criados os recursos.

Dependências
------------

N/A

Playbook de exemplo
----------------

```yaml
- name: Criar maquina para servir de host KVM
  hosts: localhost
  gather_facts: false

  roles:
    - criar_maquina
```

Licença
-------

BSD

Autor
------------------

[Lucas Pimentel Lellis](mailto:lucaslellis@gmail.com)